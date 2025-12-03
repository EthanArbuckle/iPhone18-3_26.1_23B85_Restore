@interface PKPredefinedSharedEntitlementSelection
- (PKPredefinedSharedEntitlementSelection)initWithTitle:(id)title preshareDescription:(id)description postshareDescription:(id)postshareDescription sharedEntitlements:(id)entitlements;
@end

@implementation PKPredefinedSharedEntitlementSelection

- (PKPredefinedSharedEntitlementSelection)initWithTitle:(id)title preshareDescription:(id)description postshareDescription:(id)postshareDescription sharedEntitlements:(id)entitlements
{
  titleCopy = title;
  descriptionCopy = description;
  postshareDescriptionCopy = postshareDescription;
  entitlementsCopy = entitlements;
  v26.receiver = self;
  v26.super_class = PKPredefinedSharedEntitlementSelection;
  v14 = [(PKPredefinedSharedEntitlementSelection *)&v26 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    localizedTitle = v14->_localizedTitle;
    v14->_localizedTitle = v15;

    v17 = [descriptionCopy copy];
    localizedPreshareDescription = v14->_localizedPreshareDescription;
    v14->_localizedPreshareDescription = v17;

    v19 = [postshareDescriptionCopy copy];
    localizedPostshareDescription = v14->_localizedPostshareDescription;
    v14->_localizedPostshareDescription = v19;

    v21 = [entitlementsCopy copy];
    sharedEntitlements = v14->_sharedEntitlements;
    v14->_sharedEntitlements = v21;

    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-%@-%lu", titleCopy, v14->_localizedPreshareDescription, v14->_localizedPostshareDescription, -[NSArray count](v14->_sharedEntitlements, "count")];
    identifier = v14->_identifier;
    v14->_identifier = v23;
  }

  return v14;
}

@end