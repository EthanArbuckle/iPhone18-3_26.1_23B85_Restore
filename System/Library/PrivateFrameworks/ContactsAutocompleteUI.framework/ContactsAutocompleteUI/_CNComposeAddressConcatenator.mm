@interface _CNComposeAddressConcatenator
+ (id)defaultRecipientListConcatenator;
- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)a3 prefixForAddressAtIndex:(id)a4 stringForAddressAtIndex:(id)a5 lengthValidationBlock:(id)a6;
- (void)getCommaSeparatedAddressList:(id *)a3 andListSuffix:(id *)a4 withAddressCount:(unint64_t)a5 prefixForAddressAtIndex:(id)a6 stringForAddressAtIndex:(id)a7 lengthValidationBlock:(id)a8;
@end

@implementation _CNComposeAddressConcatenator

+ (id)defaultRecipientListConcatenator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___CNComposeAddressConcatenator_defaultRecipientListConcatenator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultRecipientListConcatenator_onceToken != -1)
  {
    dispatch_once(&defaultRecipientListConcatenator_onceToken, block);
  }

  v2 = defaultRecipientListConcatenator___context;

  return v2;
}

- (void)getCommaSeparatedAddressList:(id *)a3 andListSuffix:(id *)a4 withAddressCount:(unint64_t)a5 prefixForAddressAtIndex:(id)a6 stringForAddressAtIndex:(id)a7 lengthValidationBlock:(id)a8
{
  v10 = a6;
  v11 = 0;
  v34 = a7;
  v35 = 0;
  v36 = a8;
  v12 = &stru_1F3002C60;
  while (v11 < a5)
  {
    if (v10)
    {
      v13 = v10[2](v10, v11);
    }

    else
    {
      v13 = 0;
    }

    if (v11 && !v13)
    {
      v13 = CNAUILocalizedAddressSeparator();
    }

    if (v13)
    {
      v14 = [@"‌" stringByAppendingString:v13];
    }

    else
    {
      v14 = 0;
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__1;
    v56 = __Block_byref_object_dispose__1;
    v57 = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
    v46[3] = &unk_1E7CD2380;
    v50 = v11;
    v51 = a5;
    v49 = &v52;
    v12 = v12;
    v47 = v12;
    v15 = v14;
    v48 = v15;
    v16 = MEMORY[0x1B8CB9350](v46);
    v17 = v34[2](v34, v11);
    v18 = (v16)[2](v16, v17, self->_andNMoreFormat);
    v19 = v36[2](v36, v18, v53[5]);
    v20 = v19;
    if (v19)
    {
      v21 = v18;

      v22 = v53[5];
      ++v11;
      v35 = v22;
    }

    else
    {
      if (!-[__CFString length](v12, "length") && self->_truncatedAddressFormat && self->_andNMoreNoEllipsisFormat && [v17 length] >= 2)
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_2;
        v43[3] = &unk_1E7CD23A8;
        v45 = v16;
        v43[4] = self;
        v23 = v17;
        v44 = v23;
        v30 = MEMORY[0x1B8CB9350](v43);
        v24 = [v23 length];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_3;
        v39[3] = &unk_1E7CD23D0;
        v40 = v36;
        v31 = v30;
        v41 = v31;
        v42 = &v52;
        if (v24 != 1)
        {
          IndexInRangePassingTest = CNComposeLastIndexInRangePassingTest(0, v24 - 2, v39);
          if (IndexInRangePassingTest)
          {
            if (IndexInRangePassingTest != 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = v31[2]();

              v27 = v53[5];
              v35 = v27;
              v12 = v26;
            }
          }
        }
      }

      if ([(__CFString *)v12 length])
      {
        goto LABEL_18;
      }

      v21 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:self->_nAddressesFormat, a5];
    }

    v12 = v21;
LABEL_18:

    _Block_object_dispose(&v52, 8);
    if ((v20 & 1) == 0)
    {
      break;
    }
  }

  v28 = v12;
  *a3 = v12;
  v29 = v35;
  *a4 = v29;
}

- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)a3 prefixForAddressAtIndex:(id)a4 stringForAddressAtIndex:(id)a5 lengthValidationBlock:(id)a6
{
  v10 = a6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __145___CNComposeAddressConcatenator_commaSeparatedAddressListWithAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
  v22[3] = &unk_1E7CD23F8;
  v11 = v10;
  v23 = v11;
  v12 = a5;
  v13 = a4;
  v14 = MEMORY[0x1B8CB9350](v22);
  v20 = 0;
  v21 = 0;
  [(_CNComposeAddressConcatenator *)self getCommaSeparatedAddressList:&v21 andListSuffix:&v20 withAddressCount:a3 prefixForAddressAtIndex:v13 stringForAddressAtIndex:v12 lengthValidationBlock:v14];

  v15 = v21;
  v16 = v20;
  if (v16)
  {
    v17 = [v15 stringByAppendingString:v16];
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v18;
}

@end