@interface PKPaymentPreference
- (PKPaymentPreference)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only;
- (_NSRange)footerLinkRange;
- (void)clearAllErrors;
- (void)setErrors:(id)errors forPreference:(id)preference;
@end

@implementation PKPaymentPreference

- (PKPaymentPreference)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only
{
  titleCopy = title;
  preferencesCopy = preferences;
  v19.receiver = self;
  v19.super_class = PKPaymentPreference;
  v12 = [(PKPaymentPreference *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferences, preferences);
    v13->_selectedIndex = index;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errors = v13->_errors;
    v13->_errors = v14;

    v13->_isReadOnly = only;
    v16 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v16;

    v13->_pendingIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)setErrors:(id)errors forPreference:(id)preference
{
  errorsCopy = errors;
  preferenceCopy = preference;
  if ([(NSArray *)self->_preferences indexOfObject:preferenceCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableDictionary *)self->_errors setObject:errorsCopy forKey:preferenceCopy];
  }
}

- (void)clearAllErrors
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  errors = self->_errors;
  self->_errors = v3;
}

- (_NSRange)footerLinkRange
{
  length = self->_footerLinkRange.length;
  location = self->_footerLinkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end