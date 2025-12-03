@interface HFSelectedUserCollection
+ (HFSelectedUserCollection)collectionWithResolvedUsers:(id)users inHome:(id)home;
+ (HFSelectedUserCollection)collectionWithSpecificUsers:(id)users;
+ (NAIdentity)na_identity;
+ (id)allUsersCollection;
+ (id)currentUserCollection;
- (BOOL)isEqual:(id)equal;
- (HFSelectedUserCollection)init;
- (HFSelectedUserCollection)initWithType:(unint64_t)type specificUsers:(id)users;
- (id)resolveSelectedUsersWithHome:(id)home;
- (unint64_t)hash;
@end

@implementation HFSelectedUserCollection

+ (id)allUsersCollection
{
  v2 = [self alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithType:0 specificUsers:v3];

  return v4;
}

+ (id)currentUserCollection
{
  v2 = [self alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithType:1 specificUsers:v3];

  return v4;
}

+ (HFSelectedUserCollection)collectionWithSpecificUsers:(id)users
{
  usersCopy = users;
  v5 = [[self alloc] initWithType:2 specificUsers:usersCopy];

  return v5;
}

- (HFSelectedUserCollection)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithType_specificUsers_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSelectedUserCollection.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HFSelectedUserCollection init]", v5}];

  return 0;
}

- (HFSelectedUserCollection)initWithType:(unint64_t)type specificUsers:(id)users
{
  usersCopy = users;
  v12.receiver = self;
  v12.super_class = HFSelectedUserCollection;
  v7 = [(HFSelectedUserCollection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    if (usersCopy)
    {
      v9 = usersCopy;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    specificUsers = v8->_specificUsers;
    v8->_specificUsers = v9;
  }

  return v8;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_227 != -1)
  {
    dispatch_once(&_MergedGlobals_227, &__block_literal_global_17_1);
  }

  v3 = qword_280E02CC8;

  return v3;
}

void __39__HFSelectedUserCollection_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendUnsignedIntegerCharacteristic:&__block_literal_global_24_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_27];
  v3 = [v0 build];

  v4 = qword_280E02CC8;
  qword_280E02CC8 = v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (id)resolveSelectedUsersWithHome:(id)home
{
  homeCopy = home;
  type = [(HFSelectedUserCollection *)self type];
  switch(type)
  {
    case 0uLL:
      v10 = MEMORY[0x277CBEB98];
      hf_allUsersIncludingCurrentUser = [homeCopy hf_allUsersIncludingCurrentUser];
      v9 = [v10 setWithArray:hf_allUsersIncludingCurrentUser];
      goto LABEL_7;
    case 1uLL:
      v7 = MEMORY[0x277CBEB98];
      hf_allUsersIncludingCurrentUser = [homeCopy currentUser];
      v9 = [v7 setWithObject:hf_allUsersIncludingCurrentUser];
LABEL_7:
      specificUsers = v9;

      break;
    case 2uLL:
      specificUsers = [(HFSelectedUserCollection *)self specificUsers];
      break;
    default:
      specificUsers = 0;
      break;
  }

  return specificUsers;
}

+ (HFSelectedUserCollection)collectionWithResolvedUsers:(id)users inHome:(id)home
{
  usersCopy = users;
  homeCopy = home;
  v7 = MEMORY[0x277CBEB98];
  hf_allUsersIncludingCurrentUser = [homeCopy hf_allUsersIncludingCurrentUser];
  v9 = [v7 setWithArray:hf_allUsersIncludingCurrentUser];
  v10 = [usersCopy isEqualToSet:v9];

  if (v10)
  {
    v11 = +[HFSelectedUserCollection allUsersCollection];
  }

  else
  {
    v12 = MEMORY[0x277CBEB98];
    currentUser = [homeCopy currentUser];
    v14 = [v12 setWithObject:currentUser];
    v15 = [usersCopy isEqualToSet:v14];

    if (v15)
    {
      +[HFSelectedUserCollection currentUserCollection];
    }

    else
    {
      [HFSelectedUserCollection collectionWithSpecificUsers:usersCopy];
    }
    v11 = ;
  }

  v16 = v11;

  return v16;
}

@end