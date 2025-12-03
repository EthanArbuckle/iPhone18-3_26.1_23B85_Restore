@interface MOSuggestionAttachment
- (MOSuggestionAttachment)initWithCoder:(id)coder;
- (MOSuggestionAttachment)initWithProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAttachment

- (MOSuggestionAttachment)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MOSuggestionAttachment;
  v6 = [(MOSuggestionAttachment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemProvider, provider);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestionAttachment encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_itemProvider forKey:@"provider"];
}

- (MOSuggestionAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MOSuggestionAttachment;
  v5 = [(MOSuggestionAttachment *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    itemProvider = v5->_itemProvider;
    v5->_itemProvider = v6;
  }

  return v5;
}

@end