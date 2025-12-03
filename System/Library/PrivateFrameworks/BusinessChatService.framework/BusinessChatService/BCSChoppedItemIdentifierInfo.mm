@interface BCSChoppedItemIdentifierInfo
+ (BCSChoppedItemIdentifierInfo)newWithLinkItemIdentifier:(int64_t)identifier chopID:;
@end

@implementation BCSChoppedItemIdentifierInfo

+ (BCSChoppedItemIdentifierInfo)newWithLinkItemIdentifier:(int64_t)identifier chopID:
{
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(BCSChoppedItemIdentifierInfo);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemIdentifier, a2);

    v7->_chopID = identifier;
  }

  else
  {
  }

  return v7;
}

@end