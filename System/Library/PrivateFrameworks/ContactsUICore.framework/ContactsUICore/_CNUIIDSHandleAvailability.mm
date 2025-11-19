@interface _CNUIIDSHandleAvailability
- (NSString)description;
- (_CNUIIDSHandleAvailability)initWithHandle:(id)a3 available:(BOOL)a4;
@end

@implementation _CNUIIDSHandleAvailability

- (_CNUIIDSHandleAvailability)initWithHandle:(id)a3 available:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _CNUIIDSHandleAvailability;
  v8 = [(_CNUIIDSHandleAvailability *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, a3);
    v9->_available = a4;
    v10 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(_CNUIIDSHandleAvailability *)self handle];
  v5 = [v4 _cnui_IDSIDRepresentation];
  v6 = [v3 appendName:@"handle" object:v5];

  v7 = [v3 appendName:@"available" BOOLValue:{-[_CNUIIDSHandleAvailability isAvailable](self, "isAvailable")}];
  v8 = [v3 build];

  return v8;
}

@end