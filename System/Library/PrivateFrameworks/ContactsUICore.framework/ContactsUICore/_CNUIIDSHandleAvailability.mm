@interface _CNUIIDSHandleAvailability
- (NSString)description;
- (_CNUIIDSHandleAvailability)initWithHandle:(id)handle available:(BOOL)available;
@end

@implementation _CNUIIDSHandleAvailability

- (_CNUIIDSHandleAvailability)initWithHandle:(id)handle available:(BOOL)available
{
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = _CNUIIDSHandleAvailability;
  v8 = [(_CNUIIDSHandleAvailability *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, handle);
    v9->_available = available;
    v10 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  handle = [(_CNUIIDSHandleAvailability *)self handle];
  _cnui_IDSIDRepresentation = [handle _cnui_IDSIDRepresentation];
  v6 = [v3 appendName:@"handle" object:_cnui_IDSIDRepresentation];

  v7 = [v3 appendName:@"available" BOOLValue:{-[_CNUIIDSHandleAvailability isAvailable](self, "isAvailable")}];
  build = [v3 build];

  return build;
}

@end