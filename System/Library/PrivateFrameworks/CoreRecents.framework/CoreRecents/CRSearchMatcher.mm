@interface CRSearchMatcher
- (BOOL)matches:(id)matches;
- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type;
- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type;
- (void)dealloc;
@end

@implementation CRSearchMatcher

- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type
{
  bytes = [(NSData *)self->_wholeSearchStringData bytes];
  v8 = [(NSData *)self->_wholeSearchStringData length];
  options = self->_options;
  v10 = &strncasecmp;
  if ((options & 2) == 0)
  {
    v10 = &_strncmp;
  }

  v23 = v10;
  if ((options & 2) != 0)
  {
    v11 = &strcasestr;
  }

  else
  {
    v11 = &strstr;
  }

  if (type == 4)
  {
    v12 = v8;
    if (strlen(string) == v8)
    {
      LOBYTE(v13) = (v23)(string, bytes, v12) == 0;
      return v13;
    }

LABEL_19:
    LOBYTE(v13) = 0;
    return v13;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_asciiComponents;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = *v31;
LABEL_11:
  v16 = 0;
  while (1)
  {
    if (*v31 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v30 + 1) + 8 * v16);
    bytes2 = [v17 bytes];
    v13 = v11(string, bytes2);
    if (!v13)
    {
      return v13;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v19 = [v17 length];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100016DD8;
    v24[3] = &unk_10002D560;
    typeCopy = type;
    v24[6] = v23;
    v24[7] = bytes2;
    v24[4] = &v26;
    v24[5] = v19 - 1;
    sub_100016C48(string, v24);
    v20 = *(v27 + 24);
    _Block_object_dispose(&v26, 8);
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v14 == ++v16)
    {
      v14 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      LOBYTE(v13) = 1;
      if (v14)
      {
        goto LABEL_11;
      }

      return v13;
    }
  }
}

- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type
{
  if ((type & 0xFFFFFFFD) == 4)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 5;
  }

  if (string && self->_asciiComponents)
  {
    for (i = string; ; ++i)
    {
      v8 = *i;
      if (v8 < 0)
      {
        break;
      }

      if (!v8)
      {

        return [CRSearchMatcher matchesASCIIString:"matchesASCIIString:matchType:" matchType:?];
      }
    }
  }

  if (typeCopy != 4)
  {
    v13 = [(NSArray *)self->_components count]!= 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    components = self->_components;
    v15 = [(NSArray *)components countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v15)
    {
      return v13;
    }

    v16 = v15;
    v17 = *v21;
LABEL_19:
    v18 = 0;
    while (1)
    {
      if (*v21 != v17)
      {
        objc_enumerationMutation(components);
      }

      if (!sub_100017BA4(string, [*(*(&v20 + 1) + 8 * v18) bytes], objc_msgSend(*(*(&v20 + 1) + 8 * v18), "length"), typeCopy, -[NSData bytes](self->_context, "bytes")))
      {
        return 0;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSArray *)components countByEnumeratingWithState:&v20 objects:v24 count:16];
        v13 = 1;
        if (v16)
        {
          goto LABEL_19;
        }

        return v13;
      }
    }
  }

  wholeSearchStringData = self->_wholeSearchStringData;
  if (!wholeSearchStringData)
  {
    return 0;
  }

  bytes = [(NSData *)wholeSearchStringData bytes];
  v11 = [(NSData *)self->_wholeSearchStringData length];
  bytes2 = [(NSData *)self->_context bytes];

  return sub_100017BA4(string, bytes, v11, 4, bytes2);
}

- (BOOL)matches:(id)matches
{
  uTF8String = [matches UTF8String];

  return [(CRSearchMatcher *)self matchesUTF8String:uTF8String];
}

- (void)dealloc
{
  bytes = [(NSData *)self->_context bytes];
  sub_100018074(bytes, v4);

  v5.receiver = self;
  v5.super_class = CRSearchMatcher;
  [(CRSearchMatcher *)&v5 dealloc];
}

@end