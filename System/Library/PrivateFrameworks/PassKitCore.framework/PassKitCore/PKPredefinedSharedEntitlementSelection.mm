@interface PKPredefinedSharedEntitlementSelection
- (PKPredefinedSharedEntitlementSelection)initWithTitle:(id)a3 preshareDescription:(id)a4 postshareDescription:(id)a5 sharedEntitlements:(id)a6;
@end

@implementation PKPredefinedSharedEntitlementSelection

- (PKPredefinedSharedEntitlementSelection)initWithTitle:(id)a3 preshareDescription:(id)a4 postshareDescription:(id)a5 sharedEntitlements:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = PKPredefinedSharedEntitlementSelection;
  v14 = [(PKPredefinedSharedEntitlementSelection *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    localizedTitle = v14->_localizedTitle;
    v14->_localizedTitle = v15;

    v17 = [v11 copy];
    localizedPreshareDescription = v14->_localizedPreshareDescription;
    v14->_localizedPreshareDescription = v17;

    v19 = [v12 copy];
    localizedPostshareDescription = v14->_localizedPostshareDescription;
    v14->_localizedPostshareDescription = v19;

    v21 = [v13 copy];
    sharedEntitlements = v14->_sharedEntitlements;
    v14->_sharedEntitlements = v21;

    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-%@-%lu", v10, v14->_localizedPreshareDescription, v14->_localizedPostshareDescription, -[NSArray count](v14->_sharedEntitlements, "count")];
    identifier = v14->_identifier;
    v14->_identifier = v23;
  }

  return v14;
}

@end