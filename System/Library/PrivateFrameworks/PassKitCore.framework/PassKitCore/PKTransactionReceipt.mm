@interface PKTransactionReceipt
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionReceipt:(id)receipt;
- (PKCurrencyAmount)subtotalCurrencyAmount;
- (PKCurrencyAmount)totalCurrencyAmount;
- (PKTransactionReceipt)initWithCoder:(id)coder;
- (PKTransactionReceipt)initWithFileURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithBundle:(id)bundle;
@end

@implementation PKTransactionReceipt

- (PKTransactionReceipt)initWithFileURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PKTransactionReceipt;
  v6 = [(PKTransactionReceipt *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    if (v8)
    {
      [(PKTransactionReceipt *)v7 updateWithBundle:v8];
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)updateWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [bundleCopy URLForResource:@"receipt" withExtension:@"json"];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 PKStringForKey:@"receiptProviderIdentifier"];
      receiptProviderIdentifier = self->_receiptProviderIdentifier;
      self->_receiptProviderIdentifier = v9;

      v11 = [v8 PKStringForKey:@"receiptIdentifier"];
      receiptIdentifier = self->_receiptIdentifier;
      self->_receiptIdentifier = v11;

      v13 = [v8 PKDecimalNumberFromStringForKey:@"subtotalAmount"];
      subtotalAmount = self->_subtotalAmount;
      self->_subtotalAmount = v13;

      v15 = [v8 PKDecimalNumberFromStringForKey:@"totalAmount"];
      totalAmount = self->_totalAmount;
      self->_totalAmount = v15;

      v17 = [v8 PKStringForKey:@"currencyCode"];
      currencyCode = self->_currencyCode;
      self->_currencyCode = v17;

      v19 = [v8 PKDateForKey:@"lastUpdatedDate"];
      lastUpdatedDate = self->_lastUpdatedDate;
      self->_lastUpdatedDate = v19;

      v21 = [v8 PKStringForKey:@"state"];
      v22 = v21;
      if (v21 != @"pending")
      {
        if (v21)
        {
          v23 = [(__CFString *)v21 isEqualToString:@"pending"];

          if (v23)
          {
            goto LABEL_7;
          }

          v25 = v22;
          if (v25 == @"final" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"final"], v26, v27))
          {
            v24 = 2;
            goto LABEL_13;
          }
        }

        v24 = 0;
        goto LABEL_13;
      }

LABEL_7:
      v24 = 1;
LABEL_13:

      self->_state = v24;
      v28 = [v8 PKURLForKey:@"supportURL"];
      supportURL = self->_supportURL;
      self->_supportURL = v28;

      v30 = [v8 PKArrayContaining:objc_opt_class() forKey:@"headerFields"];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __41__PKTransactionReceipt_updateWithBundle___block_invoke;
      v53[3] = &unk_1E79C8608;
      v31 = bundleCopy;
      v54 = v31;
      v32 = [v30 pk_arrayByApplyingBlock:v53];
      headerFields = self->_headerFields;
      self->_headerFields = v32;

      v34 = [v8 PKArrayContaining:objc_opt_class() forKey:@"lineItems"];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __41__PKTransactionReceipt_updateWithBundle___block_invoke_2;
      v51[3] = &unk_1E79C8630;
      v35 = v31;
      v52 = v35;
      v36 = [v34 pk_arrayByApplyingBlock:v51];
      lineItems = self->_lineItems;
      self->_lineItems = v36;

      v38 = [v8 PKArrayContaining:objc_opt_class() forKey:@"summaryItems"];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __41__PKTransactionReceipt_updateWithBundle___block_invoke_3;
      v49[3] = &unk_1E79C8658;
      v39 = v35;
      v50 = v39;
      v40 = [v38 pk_arrayByApplyingBlock:v49];
      summaryItems = self->_summaryItems;
      self->_summaryItems = v40;

      v42 = [v39 URLForResource:@"receipt" withExtension:@"pdf"];
      if (v42)
      {
        v43 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v42];
        pdfReceiptData = self->_pdfReceiptData;
        self->_pdfReceiptData = v43;
      }

      v45 = [v39 URLForResource:@"receipt" withExtension:@"html"];
      if (v45)
      {
        v46 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v45];
        htmlReceiptData = self->_htmlReceiptData;
        self->_htmlReceiptData = v46;
      }

      v48 = PKGenerateTransactionReceiptUniqueID(self->_receiptProviderIdentifier, self->_receiptIdentifier);
      [(PKTransactionReceipt *)self setUniqueID:v48];
    }
  }

LABEL_18:
}

PKTransactionReceiptHeaderField *__41__PKTransactionReceipt_updateWithBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKTransactionReceiptHeaderField alloc] initWithDictionary:v3 bundle:*(a1 + 32)];

  return v4;
}

PKTransactionReceiptLineItem *__41__PKTransactionReceipt_updateWithBundle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKTransactionReceiptLineItem alloc] initWithDictionary:v3 bundle:*(a1 + 32)];

  return v4;
}

PKTransactionReceiptSummaryItem *__41__PKTransactionReceipt_updateWithBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKTransactionReceiptSummaryItem alloc] initWithDictionary:v3 bundle:*(a1 + 32)];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"receiptProviderIdentifier: '%@'; ", self->_receiptProviderIdentifier];
  [v3 appendFormat:@"receiptIdentifier: '%@'; ", self->_receiptIdentifier];
  [v3 appendFormat:@"lastUpdatedDate: '%@'; ", self->_lastUpdatedDate];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  [v3 appendFormat:@"state: '%@'; ", v4];

  [v3 appendFormat:@"supportURL: '%@'; ", self->_supportURL];
  [v3 appendFormat:@"subtotalAmount: '%@'; ", self->_subtotalAmount];
  [v3 appendFormat:@"totalAmount: '%@'; ", self->_totalAmount];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReceipt *)self isEqualToTransactionReceipt:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionReceipt:(id)receipt
{
  receiptCopy = receipt;
  v5 = receiptCopy;
  if (!receiptCopy)
  {
    goto LABEL_47;
  }

  v6 = receiptCopy[1];
  v7 = self->_uniqueID;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_46;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_47;
    }
  }

  v11 = v5[2];
  v7 = self->_receiptProviderIdentifier;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_46;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_47;
    }
  }

  v14 = v5[3];
  v7 = self->_receiptIdentifier;
  v15 = v14;
  v9 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v7 || !v15)
    {
      goto LABEL_46;
    }

    v16 = [(NSString *)v7 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v18 = v5[4];
  if (lastUpdatedDate && v18)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (lastUpdatedDate != v18)
  {
    goto LABEL_47;
  }

  if (self->_state != v5[6])
  {
    goto LABEL_47;
  }

  supportURL = self->_supportURL;
  v20 = v5[5];
  if (supportURL && v20)
  {
    if (([(NSURL *)supportURL isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (supportURL != v20)
  {
    goto LABEL_47;
  }

  subtotalAmount = self->_subtotalAmount;
  v22 = v5[7];
  if (subtotalAmount && v22)
  {
    if (([(NSDecimalNumber *)subtotalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (subtotalAmount != v22)
  {
    goto LABEL_47;
  }

  totalAmount = self->_totalAmount;
  v24 = v5[8];
  if (totalAmount && v24)
  {
    if (([(NSDecimalNumber *)totalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (totalAmount != v24)
  {
    goto LABEL_47;
  }

  v25 = v5[9];
  v7 = self->_currencyCode;
  v26 = v25;
  v9 = v26;
  if (v7 == v26)
  {

    goto LABEL_50;
  }

  if (!v7 || !v26)
  {
LABEL_46:

    goto LABEL_47;
  }

  v27 = [(NSString *)v7 isEqualToString:v26];

  if (!v27)
  {
    goto LABEL_47;
  }

LABEL_50:
  headerFields = self->_headerFields;
  v31 = v5[10];
  if (headerFields && v31)
  {
    if (([(NSArray *)headerFields isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (headerFields != v31)
  {
    goto LABEL_47;
  }

  lineItems = self->_lineItems;
  v33 = v5[11];
  if (lineItems && v33)
  {
    if (([(NSArray *)lineItems isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (lineItems != v33)
  {
    goto LABEL_47;
  }

  summaryItems = self->_summaryItems;
  v35 = v5[12];
  if (summaryItems && v35)
  {
    if (([(NSArray *)summaryItems isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (summaryItems != v35)
  {
    goto LABEL_47;
  }

  htmlReceiptData = self->_htmlReceiptData;
  v37 = v5[14];
  if (htmlReceiptData && v37)
  {
    if (([(NSData *)htmlReceiptData isEqual:?]& 1) != 0)
    {
      goto LABEL_70;
    }

LABEL_47:
    v28 = 0;
    goto LABEL_48;
  }

  if (htmlReceiptData != v37)
  {
    goto LABEL_47;
  }

LABEL_70:
  pdfReceiptData = self->_pdfReceiptData;
  v39 = v5[13];
  if (pdfReceiptData && v39)
  {
    v28 = [(NSData *)pdfReceiptData isEqual:?];
  }

  else
  {
    v28 = pdfReceiptData == v39;
  }

LABEL_48:

  return v28;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_uniqueID];
  [v3 safelyAddObject:self->_receiptProviderIdentifier];
  [v3 safelyAddObject:self->_receiptIdentifier];
  [v3 safelyAddObject:self->_lastUpdatedDate];
  [v3 safelyAddObject:self->_supportURL];
  [v3 safelyAddObject:self->_subtotalAmount];
  [v3 safelyAddObject:self->_totalAmount];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_headerFields];
  [v3 safelyAddObject:self->_lineItems];
  [v3 safelyAddObject:self->_summaryItems];
  [v3 safelyAddObject:self->_htmlReceiptData];
  [v3 safelyAddObject:self->_pdfReceiptData];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_state - v4 + 32 * v4;

  return v5;
}

- (PKTransactionReceipt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = PKTransactionReceipt;
  v5 = [(PKTransactionReceipt *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiptProviderIdentifier"];
    receiptProviderIdentifier = v5->_receiptProviderIdentifier;
    v5->_receiptProviderIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiptIdentifier"];
    receiptIdentifier = v5->_receiptIdentifier;
    v5->_receiptIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportURL"];
    supportURL = v5->_supportURL;
    v5->_supportURL = v14;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtotalAmount"];
    subtotalAmount = v5->_subtotalAmount;
    v5->_subtotalAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"headerFields"];
    headerFields = v5->_headerFields;
    v5->_headerFields = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"lineItems"];
    lineItems = v5->_lineItems;
    v5->_lineItems = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"summaryItems"];
    summaryItems = v5->_summaryItems;
    v5->_summaryItems = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HTMLReceiptData"];
    htmlReceiptData = v5->_htmlReceiptData;
    v5->_htmlReceiptData = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PDFReceiptData"];
    pdfReceiptData = v5->_pdfReceiptData;
    v5->_pdfReceiptData = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_receiptProviderIdentifier forKey:@"receiptProviderIdentifier"];
  [coderCopy encodeObject:self->_receiptIdentifier forKey:@"receiptIdentifier"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_supportURL forKey:@"supportURL"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_subtotalAmount forKey:@"subtotalAmount"];
  [coderCopy encodeObject:self->_totalAmount forKey:@"totalAmount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_headerFields forKey:@"headerFields"];
  [coderCopy encodeObject:self->_lineItems forKey:@"lineItems"];
  [coderCopy encodeObject:self->_summaryItems forKey:@"summaryItems"];
  [coderCopy encodeObject:self->_htmlReceiptData forKey:@"HTMLReceiptData"];
  [coderCopy encodeObject:self->_pdfReceiptData forKey:@"PDFReceiptData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_receiptProviderIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_receiptIdentifier copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v5[6] = self->_state;
  v14 = [(NSURL *)self->_supportURL copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSDecimalNumber *)self->_subtotalAmount copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSDecimalNumber *)self->_totalAmount copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v21 = v5[9];
  v5[9] = v20;

  v22 = [(NSArray *)self->_headerFields copyWithZone:zone];
  v23 = v5[10];
  v5[10] = v22;

  v24 = [(NSArray *)self->_lineItems copyWithZone:zone];
  v25 = v5[11];
  v5[11] = v24;

  v26 = [(NSArray *)self->_summaryItems copyWithZone:zone];
  v27 = v5[12];
  v5[12] = v26;

  v28 = [(NSData *)self->_htmlReceiptData copyWithZone:zone];
  v29 = v5[14];
  v5[14] = v28;

  v30 = [(NSData *)self->_pdfReceiptData copyWithZone:zone];
  v31 = v5[13];
  v5[13] = v30;

  return v5;
}

- (PKCurrencyAmount)subtotalCurrencyAmount
{
  subtotalAmount = self->_subtotalAmount;
  if (!subtotalAmount)
  {
LABEL_4:

    return subtotalAmount;
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    subtotalAmount = PKCurrencyAmountCreate(subtotalAmount, currencyCode, 0);
    v2 = vars8;
    goto LABEL_4;
  }

  subtotalAmount = 0;

  return subtotalAmount;
}

- (PKCurrencyAmount)totalCurrencyAmount
{
  totalAmount = self->_totalAmount;
  if (!totalAmount)
  {
LABEL_4:

    return totalAmount;
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    totalAmount = PKCurrencyAmountCreate(totalAmount, currencyCode, 0);
    v2 = vars8;
    goto LABEL_4;
  }

  totalAmount = 0;

  return totalAmount;
}

@end