@interface DOCContentUnavailableConfigurationState
- (DOCContentUnavailableConfigurationState)initWithTraitCollection:(id)collection;
- (NSString)searchControllerText;
- (UITraitCollection)traitCollection;
- (id)customStateForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setCustomState:(id)state forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setSearchControllerText:(id)text;
@end

@implementation DOCContentUnavailableConfigurationState

- (NSString)searchControllerText
{
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  searchControllerText = [asUIKit searchControllerText];

  return searchControllerText;
}

- (void)setSearchControllerText:(id)text
{
  textCopy = text;
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setSearchControllerText:textCopy];
}

- (DOCContentUnavailableConfigurationState)initWithTraitCollection:(id)collection
{
  v4 = MEMORY[0x277D75398];
  collectionCopy = collection;
  v6 = [[v4 alloc] initWithTraitCollection:collectionCopy];

  v7 = [objc_opt_class() instanceWrappingImpl:v6];

  return v7;
}

- (UITraitCollection)traitCollection
{
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  traitCollection = [asUIKit traitCollection];

  return traitCollection;
}

- (id)customStateForKey:(id)key
{
  keyCopy = key;
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  v6 = [asUIKit customStateForKey:keyCopy];

  return v6;
}

- (void)setCustomState:(id)state forKey:(id)key
{
  keyCopy = key;
  stateCopy = state;
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setCustomState:stateCopy forKey:keyCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  v6 = [asUIKit objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  asUIKit = [(DOCContentUnavailableConfigurationState *)self asUIKit];
  [asUIKit setObject:objectCopy forKeyedSubscript:subscriptCopy];
}

@end