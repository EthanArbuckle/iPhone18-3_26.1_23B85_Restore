@interface CKDURLResponseOverrideProxy
- (CKDURLResponseOverrideProxy)initWithResponse:(id)a3 overrides:(id)a4;
- (id)allHeaderFields;
- (id)valueForHTTPHeaderField:(id)a3;
@end

@implementation CKDURLResponseOverrideProxy

- (CKDURLResponseOverrideProxy)initWithResponse:(id)a3 overrides:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_realResponse, a3);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"HTTPResponseStatusOverride");
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_integerValue(v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_statusCode(v7, v11, v12);
  }

  self->_statusCode = v14;
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, @"HTTPResponseHeaderOverrides");
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

- (id)valueForHTTPHeaderField:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_objectForKey_(self->_responseHeaderOverrides, v5, v4);
  if (!v7)
  {
    v7 = objc_msgSend_valueForHTTPHeaderField_(self->_realResponse, v6, v4);
  }

  return v7;
}

@end