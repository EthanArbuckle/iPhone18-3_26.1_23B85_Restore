@interface CHTextFieldTypeSwitchStep
- (id)initProcessorDefault:(id)a3 processorDigits:(id)a4 processorPhone:(id)a5 processorUsername:(id)a6 processorEmail:(id)a7 processorURL:(id)a8 processorASCII:(id)a9 processorEquation:(id)a10;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHTextFieldTypeSwitchStep

- (id)initProcessorDefault:(id)a3 processorDigits:(id)a4 processorPhone:(id)a5 processorUsername:(id)a6 processorEmail:(id)a7 processorURL:(id)a8 processorASCII:(id)a9 processorEquation:(id)a10
{
  v17 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = CHTextFieldTypeSwitchStep;
  v19 = [(CHTextFieldTypeSwitchStep *)&v28 init];
  p_isa = &v19->super.super.super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_defaultProcessor, a3);
    objc_storeStrong(p_isa + 1, a4);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 3, a6);
    objc_storeStrong(p_isa + 4, a7);
    objc_storeStrong(p_isa + 5, a8);
    objc_storeStrong(p_isa + 6, a9);
    objc_storeStrong(p_isa + 7, a10);
  }

  return p_isa;
}

- (id)process:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14 = objc_msgSend_contentType(v7, v9, v10, v11, v12, v13);
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if (self)
        {
          asciiProcessor = self->_asciiProcessor;
        }

        else
        {
          asciiProcessor = 0;
        }
      }

      else
      {
        if (v14 != 7)
        {
          goto LABEL_26;
        }

        if (self)
        {
          asciiProcessor = self->_equationProcessor;
        }

        else
        {
          asciiProcessor = 0;
        }
      }
    }

    else if (v14 == 4)
    {
      if (self)
      {
        asciiProcessor = self->_emailProcessor;
      }

      else
      {
        asciiProcessor = 0;
      }
    }

    else if (self)
    {
      asciiProcessor = self->_urlProcessor;
    }

    else
    {
      asciiProcessor = 0;
    }
  }

  else if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (self)
      {
        asciiProcessor = self->_phoneProcessor;
      }

      else
      {
        asciiProcessor = 0;
      }
    }

    else if (self)
    {
      asciiProcessor = self->_usernameProcessor;
    }

    else
    {
      asciiProcessor = 0;
    }
  }

  else
  {
    if (!v14)
    {
      v21 = objc_msgSend_defaultProcessor(self, v15, v16, v17, v18, v19);
      v4 = sub_1839933BC(self, v7, v21, v8);

      goto LABEL_26;
    }

    if (v14 != 1)
    {
      goto LABEL_26;
    }

    if (self)
    {
      asciiProcessor = self->_digitProcessor;
    }

    else
    {
      asciiProcessor = 0;
    }
  }

  v4 = sub_1839933BC(self, v7, asciiProcessor, v8);
LABEL_26:

  return v4;
}

@end