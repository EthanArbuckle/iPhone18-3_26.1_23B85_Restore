@interface CTCarrierSpacePlansInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpacePlansInfo)init;
- (CTCarrierSpacePlansInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpacePlansInfo

- (CTCarrierSpacePlansInfo)init
{
  v6.receiver = self;
  v6.super_class = CTCarrierSpacePlansInfo;
  v2 = [(CTCarrierSpacePlansInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    planGroupsList = v2->_planGroupsList;
    v2->_planGroupsList = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  planGroupsList = [(CTCarrierSpacePlansInfo *)self planGroupsList];
  [v3 appendFormat:@" planGroupsList=%@", planGroupsList];

  morePlansURL = [(CTCarrierSpacePlansInfo *)self morePlansURL];
  [v3 appendFormat:@", morePlansURL=%@", morePlansURL];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      planGroupsList = [(CTCarrierSpacePlansInfo *)self planGroupsList];
      planGroupsList2 = [(CTCarrierSpacePlansInfo *)equalCopy planGroupsList];
      if (planGroupsList == planGroupsList2 || (-[CTCarrierSpacePlansInfo planGroupsList](self, "planGroupsList"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpacePlansInfo planGroupsList](equalCopy, "planGroupsList"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        morePlansURL = [(CTCarrierSpacePlansInfo *)self morePlansURL];
        morePlansURL2 = [(CTCarrierSpacePlansInfo *)equalCopy morePlansURL];
        if (morePlansURL == morePlansURL2)
        {
          v9 = 1;
        }

        else
        {
          morePlansURL3 = [(CTCarrierSpacePlansInfo *)self morePlansURL];
          morePlansURL4 = [(CTCarrierSpacePlansInfo *)equalCopy morePlansURL];
          v9 = [morePlansURL3 isEqualToString:morePlansURL4];
        }

        if (planGroupsList == planGroupsList2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  planGroupsList = self->_planGroupsList;
  coderCopy = coder;
  [coderCopy encodeObject:planGroupsList forKey:@"planGroupsList"];
  [coderCopy encodeObject:self->_morePlansURL forKey:@"morePlansURL"];
}

- (CTCarrierSpacePlansInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTCarrierSpacePlansInfo;
  v5 = [(CTCarrierSpacePlansInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"planGroupsList"];
    planGroupsList = v5->_planGroupsList;
    v5->_planGroupsList = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"morePlansURL"];
    morePlansURL = v5->_morePlansURL;
    v5->_morePlansURL = v11;
  }

  return v5;
}

@end