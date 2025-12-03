@interface EAEmailAddressSet
+ (OS_os_log)log;
+ (id)set;
+ (id)setWithCapacity:(unint64_t)capacity;
- (BOOL)intersectsSet:(id)set;
- (BOOL)isEqualToSet:(id)set;
- (BOOL)isSubsetOfSet:(id)set;
- (EAEmailAddressSet)init;
- (EAEmailAddressSet)initWithCapacity:(unint64_t)capacity;
- (EAEmailAddressSet)initWithCoder:(id)coder;
- (EAEmailAddressSet)initWithSerializedRepresentation:(id)representation;
- (NSData)serializedRepresentation;
- (id)allObjects;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation EAEmailAddressSet

- (EAEmailAddressSet)init
{
  v6.receiver = self;
  v6.super_class = EAEmailAddressSet;
  v2 = [(EAEmailAddressSet *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    internalSet = v2->_internalSet;
    v2->_internalSet = v3;
  }

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__EAEmailAddressSet_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __24__EAEmailAddressSet_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

+ (id)set
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)setWithCapacity:(unint64_t)capacity
{
  v3 = [[self alloc] initWithCapacity:capacity];

  return v3;
}

- (EAEmailAddressSet)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = EAEmailAddressSet;
  v4 = [(EAEmailAddressSet *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:capacity];
    internalSet = v4->_internalSet;
    v4->_internalSet = v5;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(EAEmailAddressSet);
  internalSet = [(EAEmailAddressSet *)self internalSet];
  v7 = [internalSet mutableCopyWithZone:zone];
  [(EAEmailAddressSet *)v5 setInternalSet:v7];

  return v5;
}

- (EAEmailAddressSet)initWithSerializedRepresentation:(id)representation
{
  v9 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:representationCopy error:0];
  v6 = [(EAEmailAddressSet *)self initWithCoder:v5];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSData)serializedRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [(EAEmailAddressSet *)self encodeWithCoder:v3];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (EAEmailAddressSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EAEmailAddressSet;
  v5 = [(EAEmailAddressSet *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_internalSet"];
    internalSet = v5->_internalSet;
    v5->_internalSet = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EAEmailAddressSet;
  [(EAEmailAddressSet *)&v6 encodeWithCoder:coderCopy];
  internalSet = [(EAEmailAddressSet *)self internalSet];
  [coderCopy encodeObject:internalSet forKey:@"EFPropertyKey_internalSet"];
}

- (unint64_t)count
{
  internalSet = [(EAEmailAddressSet *)self internalSet];
  v3 = [internalSet count];

  return v3;
}

- (id)member:(id)member
{
  memberCopy = member;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EAEmailAddressSet.m" lineNumber:111 description:@"Email must be string"];
  }

  v6 = [[_EAEmailAddress alloc] initWithEmailAddress:memberCopy];
  internalSet = [(EAEmailAddressSet *)self internalSet];
  v8 = [internalSet member:v6];
  emailAddress = [v8 emailAddress];

  return emailAddress;
}

- (BOOL)intersectsSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [setCopy count])
  {
    internalSet = [(EAEmailAddressSet *)self internalSet];
    internalSet2 = [setCopy internalSet];
    v7 = [internalSet intersectsSet:internalSet2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EAEmailAddressSet;
    v7 = [(EAEmailAddressSet *)&v9 intersectsSet:setCopy];
  }

  return v7;
}

- (BOOL)isSubsetOfSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [setCopy count])
  {
    internalSet = [(EAEmailAddressSet *)self internalSet];
    internalSet2 = [setCopy internalSet];
    v7 = [internalSet isSubsetOfSet:internalSet2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EAEmailAddressSet;
    v7 = [(EAEmailAddressSet *)&v9 isSubsetOfSet:setCopy];
  }

  return v7;
}

- (BOOL)isEqualToSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[EAEmailAddressSet count](self, "count"), v5 == [setCopy count]))
  {
    v6 = [(EAEmailAddressSet *)self isSubsetOfSet:setCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = EAEmailAddressSet;
    v6 = [(EAEmailAddressSet *)&v9 isEqualToSet:setCopy];
  }

  v7 = v6;

  return v7;
}

- (id)allObjects
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[EAEmailAddressSet count](self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  internalSet = [(EAEmailAddressSet *)self internalSet];
  v5 = [internalSet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(internalSet);
        }

        emailAddress = [*(*(&v11 + 1) + 8 * i) emailAddress];
        [v3 addObject:emailAddress];
      }

      v5 = [internalSet countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)objectEnumerator
{
  v2 = [[_EAEmailAddressSetEnumerator alloc] initWithSet:self];

  return v2;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  internalSet = [(EAEmailAddressSet *)self internalSet];
  v9 = [internalSet countByEnumeratingWithState:state objects:objects count:count];

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = state->var1[i];
      state->var1[i] = [v11 emailAddress];
    }
  }

  return v9;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EAEmailAddressSet.m" lineNumber:173 description:@"Email must be string"];
  }

  internalSet = [(EAEmailAddressSet *)self internalSet];
  v6 = [[_EAEmailAddress alloc] initWithEmailAddress:objectCopy];
  [internalSet addObject:v6];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EAEmailAddressSet.m" lineNumber:178 description:@"Email must be string"];
  }

  internalSet = [(EAEmailAddressSet *)self internalSet];
  v6 = [[_EAEmailAddress alloc] initWithEmailAddress:objectCopy];
  [internalSet removeObject:v6];
}

- (void)removeAllObjects
{
  internalSet = [(EAEmailAddressSet *)self internalSet];
  [internalSet removeAllObjects];
}

- (void)unionSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internalSet = [(EAEmailAddressSet *)self internalSet];
    internalSet2 = [setCopy internalSet];
    [internalSet unionSet:internalSet2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EAEmailAddressSet;
    [(EAEmailAddressSet *)&v7 unionSet:setCopy];
  }
}

- (void)minusSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internalSet = [(EAEmailAddressSet *)self internalSet];
    internalSet2 = [setCopy internalSet];
    [internalSet minusSet:internalSet2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EAEmailAddressSet;
    [(EAEmailAddressSet *)&v7 minusSet:setCopy];
  }
}

- (void)intersectSet:(id)set
{
  setCopy = set;
  if (setCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      internalSet = [(EAEmailAddressSet *)self internalSet];
      internalSet2 = [(EAEmailAddressSet *)setCopy internalSet];
      [internalSet intersectSet:internalSet2];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = EAEmailAddressSet;
      [(EAEmailAddressSet *)&v7 intersectSet:setCopy];
    }
  }
}

- (void)setSet:(id)set
{
  setCopy = set;
  if (setCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      internalSet = [(EAEmailAddressSet *)setCopy internalSet];
      v6 = [internalSet mutableCopy];
      [(EAEmailAddressSet *)self setInternalSet:v6];

      internalSet2 = [(EAEmailAddressSet *)self internalSet];
      internalSet3 = [(EAEmailAddressSet *)setCopy internalSet];
      [internalSet2 unionSet:internalSet3];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = EAEmailAddressSet;
      [(EAEmailAddressSet *)&v9 setSet:setCopy];
    }
  }
}

- (void)initWithSerializedRepresentation:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_249FAA000, log, OS_LOG_TYPE_FAULT, "Exception occured: %{public}@\nSymbols:\n%{public}@", buf, 0x16u);
}

@end