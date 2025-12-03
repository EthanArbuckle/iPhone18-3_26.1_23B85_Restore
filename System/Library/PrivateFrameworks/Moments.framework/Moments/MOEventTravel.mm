@interface MOEventTravel
- (MOEventTravel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventTravel

- (void)encodeWithCoder:(id)coder
{
  tripTitle = self->_tripTitle;
  coderCopy = coder;
  [coderCopy encodeObject:tripTitle forKey:@"tripTitle"];
  [coderCopy encodeObject:self->_tripParts forKey:@"tripParts"];
}

- (MOEventTravel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MOEventTravel;
  v5 = [(MOEventTravel *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripTitle"];
    tripTitle = v5->_tripTitle;
    v5->_tripTitle = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 initWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"tripParts"];
    tripParts = v5->_tripParts;
    v5->_tripParts = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventTravel);
  objc_storeStrong(&v4->_tripParts, self->_tripParts);
  objc_storeStrong(&v4->_tripTitle, self->_tripTitle);
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  tripTitle = [(MOEventTravel *)self tripTitle];
  mask = [tripTitle mask];
  v6 = [v3 initWithFormat:@"tripTitle, %@", mask];

  return v6;
}

@end