@interface HFSelectedUserCollection
+ (HFSelectedUserCollection)collectionWithResolvedUsers:(id)a3 inHome:(id)a4;
+ (HFSelectedUserCollection)collectionWithSpecificUsers:(id)a3;
+ (NAIdentity)na_identity;
+ (id)allUsersCollection;
+ (id)currentUserCollection;
- (BOOL)isEqual:(id)a3;
- (HFSelectedUserCollection)init;
- (HFSelectedUserCollection)initWithType:(unint64_t)a3 specificUsers:(id)a4;
- (id)resolveSelectedUsersWithHome:(id)a3;
- (unint64_t)hash;
@end

@implementation HFSelectedUserCollection

+ (id)allUsersCollection
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithType:0 specificUsers:v3];

  return v4;
}

+ (id)currentUserCollection
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithType:1 specificUsers:v3];

  return v4;
}

+ (HFSelectedUserCollection)collectionWithSpecificUsers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:2 specificUsers:v4];

  return v5;
}

- (HFSelectedUserCollection)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithType_specificUsers_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSelectedUserCollection.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HFSelectedUserCollection init]", v5}];

  return 0;
}

- (HFSelectedUserCollection)initWithType:(unint64_t)a3 specificUsers:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HFSelectedUserCollection;
  v7 = [(HFSelectedUserCollection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    if (v6)
    {
      v9 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (id)resolveSelectedUsersWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HFSelectedUserCollection *)self type];
  switch(v5)
  {
    case 0uLL:
      v10 = MEMORY[0x277CBEB98];
      v8 = [v4 hf_allUsersIncludingCurrentUser];
      v9 = [v10 setWithArray:v8];
      goto LABEL_7;
    case 1uLL:
      v7 = MEMORY[0x277CBEB98];
      v8 = [v4 currentUser];
      v9 = [v7 setWithObject:v8];
LABEL_7:
      v6 = v9;

      break;
    case 2uLL:
      v6 = [(HFSelectedUserCollection *)self specificUsers];
      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

+ (HFSelectedUserCollection)collectionWithResolvedUsers:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v6 hf_allUsersIncludingCurrentUser];
  v9 = [v7 setWithArray:v8];
  v10 = [v5 isEqualToSet:v9];

  if (v10)
  {
    v11 = +[HFSelectedUserCollection allUsersCollection];
  }

  else
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [v6 currentUser];
    v14 = [v12 setWithObject:v13];
    v15 = [v5 isEqualToSet:v14];

    if (v15)
    {
      +[HFSelectedUserCollection currentUserCollection];
    }

    else
    {
      [HFSelectedUserCollection collectionWithSpecificUsers:v5];
    }
    v11 = ;
  }

  v16 = v11;

  return v16;
}

@end