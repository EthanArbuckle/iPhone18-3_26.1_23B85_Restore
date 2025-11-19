@interface CTCarrierSpacePlansInfo
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpacePlansInfo)init;
- (CTCarrierSpacePlansInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTCarrierSpacePlansInfo *)self planGroupsList];
  [v3 appendFormat:@" planGroupsList=%@", v4];

  v5 = [(CTCarrierSpacePlansInfo *)self morePlansURL];
  [v3 appendFormat:@", morePlansURL=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTCarrierSpacePlansInfo *)self planGroupsList];
      v8 = [(CTCarrierSpacePlansInfo *)v6 planGroupsList];
      if (v7 == v8 || (-[CTCarrierSpacePlansInfo planGroupsList](self, "planGroupsList"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpacePlansInfo planGroupsList](v6, "planGroupsList"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        v10 = [(CTCarrierSpacePlansInfo *)self morePlansURL];
        v11 = [(CTCarrierSpacePlansInfo *)v6 morePlansURL];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTCarrierSpacePlansInfo *)self morePlansURL];
          v13 = [(CTCarrierSpacePlansInfo *)v6 morePlansURL];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
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

- (void)encodeWithCoder:(id)a3
{
  planGroupsList = self->_planGroupsList;
  v5 = a3;
  [v5 encodeObject:planGroupsList forKey:@"planGroupsList"];
  [v5 encodeObject:self->_morePlansURL forKey:@"morePlansURL"];
}

- (CTCarrierSpacePlansInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTCarrierSpacePlansInfo;
  v5 = [(CTCarrierSpacePlansInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"planGroupsList"];
    planGroupsList = v5->_planGroupsList;
    v5->_planGroupsList = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"morePlansURL"];
    morePlansURL = v5->_morePlansURL;
    v5->_morePlansURL = v11;
  }

  return v5;
}

@end