@interface _EARWordPart
- (NSString)tagName;
- (_EARWordPart)initWithOrthography:(id)a3 pronunciations:(id)a4 tag:(int64_t)a5;
- (_EARWordPart)initWithOrthography:(id)a3 pronunciations:(id)a4 tagName:(id)a5 frequency:(unint64_t)a6 phoneticOrthography:(id)a7;
@end

@implementation _EARWordPart

- (_EARWordPart)initWithOrthography:(id)a3 pronunciations:(id)a4 tag:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = _EARWordPart;
  v10 = [(_EARWordPart *)&v19 init];
  if (v10)
  {
    v18 = v8;
    EARHelpers::truncateFromFirstNull(&v18);
    v11 = v18;

    v12 = [v11 copy];
    orthography = v10->_orthography;
    v10->_orthography = v12;

    v14 = [v9 copy];
    pronunciations = v10->_pronunciations;
    v10->_pronunciations = v14;

    tagName = v10->_tagName;
    v10->_tagName = 0;

    v10->_tag = a5;
    v10->_frequency = 1;
  }

  else
  {
    v11 = v8;
  }

  return v10;
}

- (_EARWordPart)initWithOrthography:(id)a3 pronunciations:(id)a4 tagName:(id)a5 frequency:(unint64_t)a6 phoneticOrthography:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v30.receiver = self;
  v30.super_class = _EARWordPart;
  v16 = [(_EARWordPart *)&v30 init];
  if (v16)
  {
    v29 = v12;
    EARHelpers::truncateFromFirstNull(&v29);
    v17 = v29;

    v28 = v15;
    EARHelpers::truncateFromFirstNull(&v28);
    v18 = v28;

    v19 = [v17 copy];
    orthography = v16->_orthography;
    v16->_orthography = v19;

    if (v13)
    {
      v21 = [v13 copy];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFD8] set];
    }

    pronunciations = v16->_pronunciations;
    v16->_pronunciations = v21;

    v16->_tag = 0;
    v23 = [v14 copy];
    tagName = v16->_tagName;
    v16->_tagName = v23;

    v16->_frequency = a6;
    v25 = [v18 copy];
    phoneticOrthography = v16->_phoneticOrthography;
    v16->_phoneticOrthography = v25;
  }

  else
  {
    v17 = v12;
    v18 = v15;
  }

  return v16;
}

- (NSString)tagName
{
  tagName = self->_tagName;
  if (tagName)
  {
    v3 = tagName;
  }

  else
  {
    tag = self->_tag;
    v5 = "";
    if (tag <= 3)
    {
      if (tag == 1)
      {
        v8 = quasar::LME_TAG_CONTACT_FIRST_NAME;
      }

      else
      {
        if (tag == 3)
        {
          v5 = "\\contact-last";
        }

        if (tag == 2)
        {
          v8 = "\\contact-middle";
        }

        else
        {
          v8 = v5;
        }
      }
    }

    else
    {
      v6 = "\\app-first";
      v7 = "\\jit";
      if (tag != 7)
      {
        v7 = "";
      }

      if (tag != 6)
      {
        v6 = v7;
      }

      if (tag == 5)
      {
        v5 = "\\company-first";
      }

      if (tag == 4)
      {
        v5 = "\\contact-nickname";
      }

      if (tag <= 5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6;
      }
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  }

  return v3;
}

@end