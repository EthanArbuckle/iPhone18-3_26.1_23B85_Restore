@interface DNDAppConfigurationTargetContentIdentifierPrefixesBox
- (DNDAppConfigurationTargetContentIdentifierPrefixesBox)initWithCoder:(id)coder;
@end

@implementation DNDAppConfigurationTargetContentIdentifierPrefixesBox

- (DNDAppConfigurationTargetContentIdentifierPrefixesBox)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"boxed"];

  v11 = objc_alloc_init(DNDAppConfigurationTargetContentIdentifierPrefixesBox);
  [(DNDAppConfigurationTargetContentIdentifierPrefixesBox *)v11 setAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v10];

  return v11;
}

@end