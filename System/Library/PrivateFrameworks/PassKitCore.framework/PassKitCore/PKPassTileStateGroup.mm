@interface PKPassTileStateGroup
+ (id)_createDefaultDashboardGroupStateWithMetadata:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (BOOL)isEqualToUnresolvedState:(id)a3;
- (PKPassTileStateGroup)initWithCoder:(id)a3;
- (id)createResolvedStateWithBundle:(id)a3 privateBundle:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileStateGroup

+ (id)_createDefaultDashboardGroupStateWithMetadata:(id)a3
{
  v3 = [PKPassTileState _createWithType:3];
  v4 = [v3 stateTypeGroup];

  [v4 setEnabled:1];
  v5 = [v4 createResolvedStateWithBundle:0 privateBundle:0];

  return v5;
}

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassTileStateGroup;
  v5 = [(PKPassTileState *)&v11 _setUpWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"header"];
    header = self->_header;
    self->_header = v6;

    v8 = [v4 PKStringForKey:@"footer"];
    footer = self->_footer;
    self->_footer = v8;
  }

  return v5;
}

- (id)createResolvedStateWithBundle:(id)a3 privateBundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = PKPassTileStateGroup;
  v6 = a4;
  v7 = a3;
  v8 = [(PKPassTileState *)&v14 createResolvedStateWithBundle:v7 privateBundle:v6];
  v9 = PKLocalizedPassStringForPassBundle(self->_header, v7, v6);
  v10 = v8[8];
  v8[8] = v9;

  v11 = PKLocalizedPassStringForPassBundle(self->_footer, v7, v6);

  v12 = v8[9];
  v8[9] = v11;

  return v8;
}

- (PKPassTileStateGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPassTileStateGroup;
  v5 = [(PKPassTileState *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    header = v5->_header;
    v5->_header = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
    headerActionTitle = v5->_headerActionTitle;
    v5->_headerActionTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerActionTitle"];
    footerActionTitle = v5->_footerActionTitle;
    v5->_footerActionTitle = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"footerActions"];
    footerActions = v5->_footerActions;
    v5->_footerActions = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileStateGroup;
  v4 = a3;
  [(PKPassTileState *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_header forKey:{@"header", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_footer forKey:@"footer"];
  [v4 encodeObject:self->_headerActionTitle forKey:@"actionTitle"];
  [v4 encodeObject:self->_footerActionTitle forKey:@"footerActionTitle"];
  [v4 encodeObject:self->_footerActions forKey:@"footerActions"];
}

- (BOOL)isEqualToUnresolvedState:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPassTileStateGroup;
  if ([(PKPassTileState *)&v17 isEqualToUnresolvedState:v4])
  {
    v5 = v4;
    header = self->_header;
    v7 = v5[8];
    v8 = header;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      v11 = [(NSString *)v7 isEqualToString:v8];

      if (!v11)
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    footer = self->_footer;
    v7 = v5[9];
    v14 = footer;
    v9 = v14;
    if (v7 == v14)
    {
      v12 = 1;
      goto LABEL_19;
    }

    if (v7)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v12 = [(NSString *)v7 isEqualToString:v14];
LABEL_19:

      goto LABEL_20;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

@end