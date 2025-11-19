@interface DMFFetchControlGroupIdentifiersResultObject
- (DMFFetchControlGroupIdentifiersResultObject)initWithCoder:(id)a3;
- (DMFFetchControlGroupIdentifiersResultObject)initWithGroupIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchControlGroupIdentifiersResultObject

- (DMFFetchControlGroupIdentifiersResultObject)initWithGroupIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchControlGroupIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v6;
  }

  return v5;
}

- (DMFFetchControlGroupIdentifiersResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFFetchControlGroupIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"groupIdentifiers"];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchControlGroupIdentifiersResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchControlGroupIdentifiersResultObject *)self groupIdentifiers:v6.receiver];
  [v4 encodeObject:v5 forKey:@"groupIdentifiers"];
}

@end