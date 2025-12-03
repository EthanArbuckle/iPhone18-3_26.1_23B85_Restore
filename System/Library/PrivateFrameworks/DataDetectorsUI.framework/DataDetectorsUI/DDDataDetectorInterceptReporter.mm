@interface DDDataDetectorInterceptReporter
- (DDDataDetectorInterceptReporter)init;
- (id)eventRepresentation;
- (id)stringForOption:(int64_t)option;
- (void)log;
- (void)logForAction:(id)action;
- (void)setShownOptions:(id)options;
@end

@implementation DDDataDetectorInterceptReporter

- (DDDataDetectorInterceptReporter)init
{
  v3.receiver = self;
  v3.super_class = DDDataDetectorInterceptReporter;
  result = [(DDDataDetectorInterceptReporter *)&v3 init];
  if (result)
  {
    *&result->_appleSupport = 0;
    result->_savedContact = 0;
    *&result->_selectedOption = vdupq_n_s64(5uLL);
    result->_secondShownOption = 5;
  }

  return result;
}

- (void)logForAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy4 = self;
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy4 = self;
      v5 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy4 = self;
        v5 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [actionCopy url];
          absoluteString = [v6 absoluteString];
          lowercaseString = [absoluteString lowercaseString];

          if ([lowercaseString hasPrefix:@"http"])
          {
            v9 = 7;
          }

          else
          {
            v9 = 6;
          }

          [(DDDataDetectorInterceptReporter *)self setSelectedOption:v9];

          goto LABEL_14;
        }

        selfCopy4 = self;
        v5 = 6;
      }
    }
  }

  [(DDDataDetectorInterceptReporter *)selfCopy4 setSelectedOption:v5];
LABEL_14:
  [(DDDataDetectorInterceptReporter *)self log];
}

- (void)setShownOptions:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([optionsCopy count])
  {
    v5 = [optionsCopy objectAtIndexedSubscript:0];
    -[DDDataDetectorInterceptReporter setFirstShownOption:](self, "setFirstShownOption:", [v5 integerValue]);
  }

  if ([optionsCopy count] >= 2)
  {
    v6 = [optionsCopy objectAtIndexedSubscript:1];
    -[DDDataDetectorInterceptReporter setSecondShownOption:](self, "setSecondShownOption:", [v6 integerValue]);
  }

  [(DDDataDetectorInterceptReporter *)self setAppleSupport:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = optionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) integerValue] == 3)
        {
          [(DDDataDetectorInterceptReporter *)self setAppleSupport:1];
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  if (qword_280B12228 != -1)
  {
    selfCopy = self;
    [DDDataDetectorInterceptReporter log];
    self = selfCopy;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DDDataDetectorInterceptReporter_log__block_invoke;
  block[3] = &unk_278290B50;
  block[4] = self;
  dispatch_async(_MergedGlobals_0, block);
}

- (id)eventRepresentation
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"apple_support";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[DDDataDetectorInterceptReporter appleSupport](self, "appleSupport")}];
  v13[0] = v3;
  v12[1] = @"contact";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[DDDataDetectorInterceptReporter contact](self, "contact")}];
  v13[1] = v4;
  v12[2] = @"saved_contact";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[DDDataDetectorInterceptReporter savedContact](self, "savedContact")}];
  v13[2] = v5;
  v12[3] = @"selected_option";
  v6 = [(DDDataDetectorInterceptReporter *)self stringForOption:[(DDDataDetectorInterceptReporter *)self selectedOption]];
  v13[3] = v6;
  v12[4] = @"shown_option_1";
  v7 = [(DDDataDetectorInterceptReporter *)self stringForOption:[(DDDataDetectorInterceptReporter *)self firstShownOption]];
  v13[4] = v7;
  v12[5] = @"shown_option_2";
  v8 = [(DDDataDetectorInterceptReporter *)self stringForOption:[(DDDataDetectorInterceptReporter *)self secondShownOption]];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)stringForOption:(int64_t)option
{
  if ((option - 1) > 6)
  {
    return @"app";
  }

  else
  {
    return off_278290D68[option - 1];
  }
}

@end