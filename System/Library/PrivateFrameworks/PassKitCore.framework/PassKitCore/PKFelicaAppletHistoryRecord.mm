@interface PKFelicaAppletHistoryRecord
- (PKFelicaAppletHistoryRecord)init;
- (PKFelicaAppletHistoryRecord)initWithCoder:(id)a3;
- (PKFelicaAppletHistoryRecord)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFelicaAppletHistoryRecord

- (PKFelicaAppletHistoryRecord)init
{
  v3.receiver = self;
  v3.super_class = PKFelicaAppletHistoryRecord;
  return [(PKTransitAppletHistoryRecord *)&v3 initWithDictionary:0];
}

- (PKFelicaAppletHistoryRecord)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PKFelicaAppletHistoryRecord;
  v5 = [(PKTransitAppletHistoryRecord *)&v33 initWithDictionary:0];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"NFHistorySequenceNumber"];
    [(PKTransitAppletHistoryRecord *)v5 setHistorySequenceNumber:v6];

    v7 = [v4 objectForKeyedSubscript:@"NFTransactionID"];
    v8 = [v7 copy];
    transactionID = v5->_transactionID;
    v5->_transactionID = v8;

    v10 = [v4 objectForKeyedSubscript:@"NFTransactionType"];
    v11 = [v10 copy];
    transactionType = v5->_transactionType;
    v5->_transactionType = v11;

    v13 = [v4 objectForKeyedSubscript:@"NFSectorCombination"];
    v14 = [v13 copy];
    sectorCombination = v5->_sectorCombination;
    v5->_sectorCombination = v14;

    v16 = [v4 objectForKeyedSubscript:@"NFAmountType"];
    v17 = [v16 copy];
    amountType = v5->_amountType;
    v5->_amountType = v17;

    v19 = [v4 objectForKeyedSubscript:@"NFAmount"];
    v20 = [v4 objectForKeyedSubscript:@"NFBalance"];
    if ([(NSNumber *)v5->_amountType integerValue]== 2)
    {
      v21 = MEMORY[0x1E696AB90];
      if (v19)
      {
        [v19 decimalValue];
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
      }

      v24 = [v21 decimalNumberWithDecimal:&v30];
      [(PKTransitAppletHistoryRecord *)v5 setAmount:v24];

      v25 = MEMORY[0x1E696AB90];
      if (v20)
      {
        [v20 decimalValue];
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
      }

      v23 = [v25 decimalNumberWithDecimal:&v30];
    }

    else
    {
      v22 = PKDecimalAmountFromAmount(v19, @"JPY");
      [(PKTransitAppletHistoryRecord *)v5 setAmount:v22];

      v23 = PKDecimalAmountFromAmount(v20, @"JPY");
    }

    v26 = v23;
    [(PKTransitAppletHistoryRecord *)v5 setBalance:v23];

    v27 = [v4 objectForKeyedSubscript:@"NFStartStationData"];
    [(PKTransitAppletHistoryRecord *)v5 setStartStation:v27];

    v28 = [v4 objectForKeyedSubscript:@"NFEndStationData"];
    [(PKTransitAppletHistoryRecord *)v5 setEndStation:v28];
  }

  return v5;
}

- (PKFelicaAppletHistoryRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKFelicaAppletHistoryRecord;
  v5 = [(PKTransitAppletHistoryRecord *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionID"];
    transactionID = v5->_transactionID;
    v5->_transactionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"felicaTransactionType"];
    transactionType = v5->_transactionType;
    v5->_transactionType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectorCombination"];
    sectorCombination = v5->_sectorCombination;
    v5->_sectorCombination = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountType"];
    amountType = v5->_amountType;
    v5->_amountType = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = PKFelicaAppletHistoryRecord;
  v5 = [(PKTransitAppletHistoryRecord *)&v15 copyWithZone:?];
  v6 = [(NSString *)self->_transactionID copyWithZone:a3];
  v7 = v5[21];
  v5[21] = v6;

  v8 = [(NSNumber *)self->_transactionType copyWithZone:a3];
  v9 = v5[18];
  v5[18] = v8;

  v10 = [(NSNumber *)self->_sectorCombination copyWithZone:a3];
  v11 = v5[19];
  v5[19] = v10;

  v12 = [(NSNumber *)self->_amountType copyWithZone:a3];
  v13 = v5[20];
  v5[20] = v12;

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKFelicaAppletHistoryRecord;
  [(PKTransitAppletHistoryRecord *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFelicaAppletHistoryRecord;
  v4 = a3;
  [(PKTransitAppletHistoryRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transactionID forKey:{@"transactionID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_transactionType forKey:@"felicaTransactionType"];
  [v4 encodeObject:self->_sectorCombination forKey:@"sectorCombination"];
  [v4 encodeObject:self->_amountType forKey:@"amountType"];
}

@end