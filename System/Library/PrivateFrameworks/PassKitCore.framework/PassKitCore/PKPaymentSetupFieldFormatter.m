@interface PKPaymentSetupFieldFormatter
- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7;
- (PKPaymentSetupFieldFormatter)initWithField:(id)a3;
@end

@implementation PKPaymentSetupFieldFormatter

- (PKPaymentSetupFieldFormatter)initWithField:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldFormatter;
  v6 = [(PKPaymentSetupFieldFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupField, a3);
  }

  return v7;
}

- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7
{
  length = a6.length;
  location = a6.location;
  v89 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v75 = [v11 substringToIndex:location];
  obj = length;
  v66 = location + length;
  v12 = [v11 substringFromIndex:?];
  v13 = [*a3 substringWithRange:{location, objc_msgSend(*a3, "length") - (location + objc_msgSend(v12, "length"))}];
  v72 = a3;
  v14 = *a3;
  v15 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  v16 = [v15 hasDisplayFormat];

  if (v16)
  {
    v68 = v13;
    v70 = v11;
    v73 = v12;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v17 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    v18 = [v17 displayFormatPaddingCharacters];

    v19 = [v18 countByEnumeratingWithState:&v83 objects:v88 count:16];
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
            objc_enumerationMutation(v18);
          }

          v14 = [v23 stringByReplacingOccurrencesOfString:*(*(&v83 + 1) + 8 * v22) withString:&stru_1F227FD28];

          ++v22;
          v23 = v14;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v20);
    }

    v13 = v68;
    v11 = v70;
    v12 = v73;
  }

  v24 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  v25 = [v24 maxLength];

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26 && [v13 length] && objc_msgSend(v14, "length") > v25)
  {
    goto LABEL_54;
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    v27 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    v28 = [v27 isNumeric];

    if (v28)
    {
      if (v13)
      {
        v29 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
        v30 = [v29 invertedSet];
        v31 = v13;
        v32 = [v14 rangeOfCharacterFromSet:v30 options:0];

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
    v33 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    v34 = [v33 hasDisplayFormat];

    if (v34)
    {
      v35 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
      v76 = [v35 displayFormatPaddingCharacters];

      v74 = v12;
      if (location)
      {
        v36 = obj;
        do
        {
          v37 = [v11 substringWithRange:{location, v36 != 0}];
          v38 = [v76 containsObject:v37];

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

      v41 = [*v72 stringByReplacingCharactersInRange:location withString:{v36 - v39, &stru_1F227FD28}];
      v42 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
      v43 = [v42 stringByApplyingDisplayFormat:v41];

      if (&v36[location] == [v11 length])
      {
        a4->location = [v43 length];
        a4->length = 0;
      }

      else
      {
        v64 = v41;
        v71 = v11;
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
        obja = v76;
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
        a4->location = v66 - v65 - v54 + v55 + [v69 length];
        a4->length = 0;

        v11 = v71;
        v12 = v74;
        v43 = v63;
        v41 = v64;
      }

      v61 = v43;
      *v72 = v43;

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