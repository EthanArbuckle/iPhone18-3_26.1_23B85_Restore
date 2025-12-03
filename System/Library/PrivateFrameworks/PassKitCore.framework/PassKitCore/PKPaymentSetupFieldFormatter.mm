@interface PKPaymentSetupFieldFormatter
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (PKPaymentSetupFieldFormatter)initWithField:(id)field;
@end

@implementation PKPaymentSetupFieldFormatter

- (PKPaymentSetupFieldFormatter)initWithField:(id)field
{
  fieldCopy = field;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldFormatter;
  v6 = [(PKPaymentSetupFieldFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupField, field);
  }

  return v7;
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  length = selectedRange.length;
  location = selectedRange.location;
  v89 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v75 = [stringCopy substringToIndex:location];
  obj = length;
  v66 = location + length;
  v12 = [stringCopy substringFromIndex:?];
  v13 = [*valid substringWithRange:{location, objc_msgSend(*valid, "length") - (location + objc_msgSend(v12, "length"))}];
  validCopy = valid;
  v14 = *valid;
  textFieldObject = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  hasDisplayFormat = [textFieldObject hasDisplayFormat];

  if (hasDisplayFormat)
  {
    v68 = v13;
    v70 = stringCopy;
    v73 = v12;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    textFieldObject2 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    displayFormatPaddingCharacters = [textFieldObject2 displayFormatPaddingCharacters];

    v19 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v83 objects:v88 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v84;
      do
      {
        v22 = 0;
        v23 = v14;
        do
        {
          if (*v84 != v21)
          {
            objc_enumerationMutation(displayFormatPaddingCharacters);
          }

          v14 = [v23 stringByReplacingOccurrencesOfString:*(*(&v83 + 1) + 8 * v22) withString:&stru_1F227FD28];

          ++v22;
          v23 = v14;
        }

        while (v20 != v22);
        v20 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v20);
    }

    v13 = v68;
    stringCopy = v70;
    v12 = v73;
  }

  textFieldObject3 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  maxLength = [textFieldObject3 maxLength];

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    v26 = maxLength == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26 && [v13 length] && objc_msgSend(v14, "length") > maxLength)
  {
    goto LABEL_54;
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    textFieldObject4 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    isNumeric = [textFieldObject4 isNumeric];

    if (isNumeric)
    {
      if (v13)
      {
        decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
        invertedSet = [decimalDigitCharacterSet invertedSet];
        v31 = v13;
        v32 = [v14 rangeOfCharacterFromSet:invertedSet options:0];

        v26 = v32 == 0x7FFFFFFFFFFFFFFFLL;
        v13 = v31;
        if (!v26)
        {
          goto LABEL_54;
        }
      }
    }
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField source]== 1)
  {
    [(PKPaymentSetupField *)self->_paymentSetupField setSource:4];
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    textFieldObject5 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    hasDisplayFormat2 = [textFieldObject5 hasDisplayFormat];

    if (hasDisplayFormat2)
    {
      textFieldObject6 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
      displayFormatPaddingCharacters2 = [textFieldObject6 displayFormatPaddingCharacters];

      v74 = v12;
      if (location)
      {
        v36 = obj;
        do
        {
          v37 = [stringCopy substringWithRange:{location, v36 != 0}];
          v38 = [displayFormatPaddingCharacters2 containsObject:v37];

          if (!v38)
          {
            break;
          }

          ++v36;
          --location;
        }

        while (location);
        v39 = obj;
      }

      else
      {
        v39 = obj;
        v36 = obj;
      }

      v41 = [*validCopy stringByReplacingCharactersInRange:location withString:{v36 - v39, &stru_1F227FD28}];
      textFieldObject7 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
      v43 = [textFieldObject7 stringByApplyingDisplayFormat:v41];

      if (&v36[location] == [stringCopy length])
      {
        range->location = [v43 length];
        range->length = 0;
      }

      else
      {
        v64 = v41;
        v71 = stringCopy;
        if ([v13 length])
        {
          v44 = v36;
          v45 = [v13 substringToIndex:1];
          v46 = [v43 rangeOfString:v45 options:0 range:{objc_msgSend(v75, "length"), objc_msgSend(v43, "length") - objc_msgSend(v75, "length")}];

          if (v46 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = 0;
          }

          else
          {
            v47 = v46 - [v75 length];
          }

          v36 = v44;
        }

        else
        {
          v47 = 0;
        }

        v48 = v47 + location;
        v49 = v47 + location + [v13 length];
        if (v49 >= [v43 length])
        {
          v50 = [v43 length];
        }

        else
        {
          v50 = [v13 length] + v48;
        }

        v65 = v36;
        v69 = v13;
        v51 = [v43 substringToIndex:{v50, v43}];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obja = displayFormatPaddingCharacters2;
        v52 = [obja countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = 0;
          v55 = 0;
          v56 = *v80;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v80 != v56)
              {
                objc_enumerationMutation(obja);
              }

              v58 = *(*(&v79 + 1) + 8 * i);
              v59 = [v75 componentsSeparatedByString:v58];
              v54 = v54 + [v59 count] - 1;

              v60 = [v51 componentsSeparatedByString:v58];
              v55 = v55 + [v60 count] - 1;
            }

            v53 = [obja countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v53);
        }

        else
        {
          v54 = 0;
          v55 = 0;
        }

        v13 = v69;
        range->location = v66 - v65 - v54 + v55 + [v69 length];
        range->length = 0;

        stringCopy = v71;
        v12 = v74;
        v43 = v63;
        v41 = v64;
      }

      v61 = v43;
      *validCopy = v43;

LABEL_54:
      v40 = 0;
      goto LABEL_55;
    }
  }

  v40 = 1;
LABEL_55:

  return v40;
}

@end