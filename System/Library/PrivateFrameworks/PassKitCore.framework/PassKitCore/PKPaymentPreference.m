@interface PKPaymentPreference
- (PKPaymentPreference)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6;
- (_NSRange)footerLinkRange;
- (void)clearAllErrors;
- (void)setErrors:(id)a3 forPreference:(id)a4;
@end

@implementation PKPaymentPreference

- (PKPaymentPreference)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v19.receiver = self;
  v19.super_class = PKPaymentPreference;
  v12 = [(PKPaymentPreference *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferences, a4);
    v13->_selectedIndex = a5;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errors = v13->_errors;
    v13->_errors = v14;

    v13->_isReadOnly = a6;
    v16 = [v10 copy];
    title = v13->_title;
    v13->_title = v16;

    v13->_pendingIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (void)setErrors:(id)a3 forPreference:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(NSArray *)self->_preferences indexOfObject:v6]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableDictionary *)self->_errors setObject:v7 forKey:v6];
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