@interface MOSuggestionAttachment
- (MOSuggestionAttachment)initWithCoder:(id)a3;
- (MOSuggestionAttachment)initWithProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAttachment

- (MOSuggestionAttachment)initWithProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOSuggestionAttachment;
  v6 = [(MOSuggestionAttachment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemProvider, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestionAttachment encodeWithCoder:];
  }

  [v4 encodeObject:self->_itemProvider forKey:@"provider"];
}

- (MOSuggestionAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MOSuggestionAttachment;
  v5 = [(MOSuggestionAttachment *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    itemProvider = v5->_itemProvider;
    v5->_itemProvider = v6;
  }

  return v5;
}

@end