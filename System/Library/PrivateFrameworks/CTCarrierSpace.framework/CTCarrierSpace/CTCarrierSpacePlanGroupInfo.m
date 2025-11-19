@interface CTCarrierSpacePlanGroupInfo
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpacePlanGroupInfo)init;
- (CTCarrierSpacePlanGroupInfo)initWithCoder:(id)a3;
- (NSString)groupId;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpacePlanGroupInfo

- (CTCarrierSpacePlanGroupInfo)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpacePlanGroupInfo;
  v2 = [(CTCarrierSpacePlanGroupInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    groupId = v2->_groupId;
    v2->_planCategory = 0;
    v2->_groupId = 0;

    groupOptionsList = v3->_groupOptionsList;
    v3->_groupOptionsList = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", planCategory=%s", CTCarrierSpacePlanCategoryAsString(-[CTCarrierSpacePlanGroupInfo planCategory](self, "planCategory"))];
  v4 = [(CTCarrierSpacePlanGroupInfo *)self groupId];
  [v3 appendFormat:@", groupId=%@", v4];

  v5 = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
  [v3 appendFormat:@", groupOptionsList=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTCarrierSpacePlanGroupInfo *)self planCategory], v5 == [(CTCarrierSpacePlanGroupInfo *)v4 planCategory]))
    {
      v6 = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
      v7 = [(CTCarrierSpacePlanGroupInfo *)v4 groupOptionsList];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
        v9 = [(CTCarrierSpacePlanGroupInfo *)v4 groupOptionsList];
        v10 = [v8 isEqualToArray:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)groupId
{
  v2 = [(CTCarrierSpacePlanGroupInfo *)self planCategory];
  v3 = @"unknown";
  if (v2 == 3)
  {
    v3 = @"roaming-plans";
  }

  if (v2 == 1)
  {
    return @"domestic-plans";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)encodeWithCoder:(id)a3
{
  planCategory = self->_planCategory;
  v5 = a3;
  [v5 encodeInteger:planCategory forKey:@"planCategory"];
  [v5 encodeObject:self->_groupOptionsList forKey:@"groupOptionsList"];
}

- (CTCarrierSpacePlanGroupInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTCarrierSpacePlanGroupInfo;
  v5 = [(CTCarrierSpacePlanGroupInfo *)&v12 init];
  if (v5)
  {
    v5->_planCategory = [v4 decodeIntegerForKey:@"planCategory"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"groupOptionsList"];
    groupOptionsList = v5->_groupOptionsList;
    v5->_groupOptionsList = v9;
  }

  return v5;
}

@end