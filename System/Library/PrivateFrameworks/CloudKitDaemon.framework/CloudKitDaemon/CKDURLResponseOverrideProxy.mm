@interface CKDURLResponseOverrideProxy
- (CKDURLResponseOverrideProxy)initWithResponse:(id)response overrides:(id)overrides;
- (id)allHeaderFields;
- (id)valueForHTTPHeaderField:(id)field;
@end

@implementation CKDURLResponseOverrideProxy

- (CKDURLResponseOverrideProxy)initWithResponse:(id)response overrides:(id)overrides
{
  responseCopy = response;
  overridesCopy = overrides;
  objc_storeStrong(&self->_realResponse, response);
  v10 = objc_msgSend_objectForKeyedSubscript_(overridesCopy, v9, @"HTTPResponseStatusOverride");
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_integerValue(v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_statusCode(responseCopy, v11, v12);
  }

  self->_statusCode = v14;
  v16 = objc_msgSend_objectForKeyedSubscript_(overridesCopy, v15, @"HTTPResponseHeaderOverrides");
  responseHeaderOverrides = self->_responseHeaderOverrides;
  self->_responseHeaderOverrides = v16;

  return self;
}

- (id)allHeaderFields
{
  v4 = objc_msgSend_allHeaderFields(self->_realResponse, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend_addEntriesFromDictionary_(v7, v8, self->_responseHeaderOverrides);
  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

- (id)valueForHTTPHeaderField:(id)field
{
  fieldCopy = field;
  v7 = objc_msgSend_objectForKey_(self->_responseHeaderOverrides, v5, fieldCopy);
  if (!v7)
  {
    v7 = objc_msgSend_valueForHTTPHeaderField_(self->_realResponse, v6, fieldCopy);
  }

  return v7;
}

@end