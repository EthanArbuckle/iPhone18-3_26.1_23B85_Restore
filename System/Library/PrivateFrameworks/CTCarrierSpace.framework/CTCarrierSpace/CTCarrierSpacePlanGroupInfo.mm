@interface CTCarrierSpacePlanGroupInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpacePlanGroupInfo)init;
- (CTCarrierSpacePlanGroupInfo)initWithCoder:(id)coder;
- (NSString)groupId;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  groupId = [(CTCarrierSpacePlanGroupInfo *)self groupId];
  [v3 appendFormat:@", groupId=%@", groupId];

  groupOptionsList = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
  [v3 appendFormat:@", groupOptionsList=%@", groupOptionsList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTCarrierSpacePlanGroupInfo *)self planCategory], v5 == [(CTCarrierSpacePlanGroupInfo *)equalCopy planCategory]))
    {
      groupOptionsList = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
      groupOptionsList2 = [(CTCarrierSpacePlanGroupInfo *)equalCopy groupOptionsList];
      if (groupOptionsList == groupOptionsList2)
      {
        v10 = 1;
      }

      else
      {
        groupOptionsList3 = [(CTCarrierSpacePlanGroupInfo *)self groupOptionsList];
        groupOptionsList4 = [(CTCarrierSpacePlanGroupInfo *)equalCopy groupOptionsList];
        v10 = [groupOptionsList3 isEqualToArray:groupOptionsList4];
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
  planCategory = [(CTCarrierSpacePlanGroupInfo *)self planCategory];
  v3 = @"unknown";
  if (planCategory == 3)
  {
    v3 = @"roaming-plans";
  }

  if (planCategory == 1)
  {
    return @"domestic-plans";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)encodeWithCoder:(id)coder
{
  planCategory = self->_planCategory;
  coderCopy = coder;
  [coderCopy encodeInteger:planCategory forKey:@"planCategory"];
  [coderCopy encodeObject:self->_groupOptionsList forKey:@"groupOptionsList"];
}

- (CTCarrierSpacePlanGroupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTCarrierSpacePlanGroupInfo;
  v5 = [(CTCarrierSpacePlanGroupInfo *)&v12 init];
  if (v5)
  {
    v5->_planCategory = [coderCopy decodeIntegerForKey:@"planCategory"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"groupOptionsList"];
    groupOptionsList = v5->_groupOptionsList;
    v5->_groupOptionsList = v9;
  }

  return v5;
}

@end