@interface CHTextFieldTypeSwitchStep
- (id)initProcessorDefault:(id)default processorDigits:(id)digits processorPhone:(id)phone processorUsername:(id)username processorEmail:(id)email processorURL:(id)l processorASCII:(id)i processorEquation:(id)self0;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTextFieldTypeSwitchStep

- (id)initProcessorDefault:(id)default processorDigits:(id)digits processorPhone:(id)phone processorUsername:(id)username processorEmail:(id)email processorURL:(id)l processorASCII:(id)i processorEquation:(id)self0
{
  defaultCopy = default;
  digitsCopy = digits;
  phoneCopy = phone;
  usernameCopy = username;
  emailCopy = email;
  lCopy = l;
  iCopy = i;
  equationCopy = equation;
  v28.receiver = self;
  v28.super_class = CHTextFieldTypeSwitchStep;
  v19 = [(CHTextFieldTypeSwitchStep *)&v28 init];
  p_isa = &v19->super.super.super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_defaultProcessor, default);
    objc_storeStrong(p_isa + 1, digits);
    objc_storeStrong(p_isa + 2, phone);
    objc_storeStrong(p_isa + 3, username);
    objc_storeStrong(p_isa + 4, email);
    objc_storeStrong(p_isa + 5, l);
    objc_storeStrong(p_isa + 6, i);
    objc_storeStrong(p_isa + 7, equation);
  }

  return p_isa;
}

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  v14 = objc_msgSend_contentType(processCopy, v9, v10, v11, v12, v13);
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
      v4 = sub_1839933BC(self, processCopy, v21, optionsCopy);

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

  v4 = sub_1839933BC(self, processCopy, asciiProcessor, optionsCopy);
LABEL_26:

  return v4;
}

@end