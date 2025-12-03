@interface XRXMLSimpleStringElementParser
- (NSString)stringValue;
- (id)collapsedStringValue;
- (void)_handleCharacters:(id)characters;
- (void)_handleCompletion;
@end

@implementation XRXMLSimpleStringElementParser

- (NSString)stringValue
{
  v5 = objc_msgSend_copy(self->accumulator, a2, v2, v3, v4);

  return v5;
}

- (id)collapsedStringValue
{
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, v2, v3, v4);
  v11 = objc_msgSend_length(self->accumulator, v7, v8, v9, v10);
  v12 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
  v17 = objc_msgSend_length(self->accumulator, v13, v14, v15, v16);
  if (v17)
  {
    v21 = v17;
    v22 = 0;
    v23 = 0;
    for (i = 0; i != v21; ++i)
    {
      v25 = objc_msgSend_characterAtIndex_(self->accumulator, v18, i, v19, v20);
      if (objc_msgSend_characterIsMember_(v6, v26, v25, v27, v28))
      {
        v23 |= v22 != 0;
      }

      else
      {
        if (v23)
        {
          v12[v22++] = 32;
        }

        v23 = 0;
        v12[v22++] = v25;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v29, v30, v12, v22, 1);

  return v31;
}

- (void)_handleCharacters:(id)characters
{
  accumulator = self->accumulator;
  if (accumulator)
  {

    objc_msgSend_appendString_(accumulator, a2, characters, v3, v4);
  }

  else
  {
    v7 = objc_msgSend_mutableCopy(characters, a2, characters, v3, v4);
    v8 = self->accumulator;
    self->accumulator = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_handleCompletion
{
  parent = self->super.parent;
  accumulator = self->accumulator;
  v9 = objc_msgSend_elementName(self, a2, v2, v3, v4);
  objc_msgSend_setValue_forElementName_(parent, v7, accumulator, v9, v8);
}

@end