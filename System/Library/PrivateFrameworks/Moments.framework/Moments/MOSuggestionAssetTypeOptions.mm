@interface MOSuggestionAssetTypeOptions
- (MOSuggestionAssetTypeOptions)initWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetTypeOptions

- (MOSuggestionAssetTypeOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetTypeOptions;
  v5 = [(MOSuggestionAssetTypeOptions *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"types"];
    requestedTypes = v5->_requestedTypes;
    v5->_requestedTypes = v9;
  }

  return v5;
}

@end