@interface PKBCBPBarcodeFlight
- (BOOL)_updateWithBarcodeMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (PKBCBPBarcodeFlight)initWithBarcodeMessage:(id)message;
- (PKBCBPBarcodeFlight)initWithCoder:(id)coder;
- (PKBCBPBarcodeFlight)initWithPassengerName:(id)name legs:(id)legs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBCBPBarcodeFlight

- (PKBCBPBarcodeFlight)initWithPassengerName:(id)name legs:(id)legs
{
  nameCopy = name;
  legsCopy = legs;
  v12.receiver = self;
  v12.super_class = PKBCBPBarcodeFlight;
  v9 = [(PKBCBPBarcodeFlight *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passengerName, name);
    objc_storeStrong(&v10->_legs, legs);
  }

  return v10;
}

- (PKBCBPBarcodeFlight)initWithBarcodeMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = PKBCBPBarcodeFlight;
  v5 = [(PKBCBPBarcodeFlight *)&v9 init];
  v6 = v5;
  if (v5 && ![(PKBCBPBarcodeFlight *)v5 _updateWithBarcodeMessage:messageCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)_updateWithBarcodeMessage:(id)message
{
  v60 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3010000000;
  v51[3] = &unk_1ADC7D092;
  v51[4] = 0;
  v51[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKBCBPBarcodeFlight__updateWithBarcodeMessage___block_invoke;
  aBlock[3] = &unk_1E79D5D18;
  v49 = v51;
  v50 = &v52;
  v42 = messageCopy;
  v48 = v42;
  v4 = _Block_copy(aBlock);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __49__PKBCBPBarcodeFlight__updateWithBarcodeMessage___block_invoke_2;
  v46[3] = &unk_1E79C46D0;
  v46[4] = &v52;
  v44 = _Block_copy(v46);
  v40 = v4[2](v4, 1);
  if (([v40 isEqualToString:@"M"]& 1) != 0)
  {
    v5 = v4[2](v4, 1);
    if (v5)
    {
      v41 = v5;
      integerValue = [v5 integerValue];
      if (integerValue)
      {
        log = v4[2](v4, 20);
        if (log)
        {
          v44[2](v44, 1);
          v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:integerValue];
          if (integerValue >= 1)
          {
            v34 = 0;
            v43 = 0;
            v32 = integerValue;
            while (1)
            {
              v37 = v4[2](v4, 7);
              if (!v37)
              {
                goto LABEL_52;
              }

              v7 = v4[2](v4, 3);
              if (!v7)
              {
                goto LABEL_50;
              }

              v8 = v4[2](v4, 3);
              if (!v8)
              {
                break;
              }

              v9 = v4[2](v4, 3);
              v35 = v7;
              v36 = v8;
              if (!v9 || (v4[2](v4, 5), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 integerValue], v10, !v11) || (v4[2](v4, 3), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "integerValue"), v12, !v13) || (v44[2](v44, 1), v4[2](v4, 4), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
              {

                goto LABEL_50;
              }

              v44[2](v44, 6);
              v15 = v4[2](v4, 2);
              if (!v15)
              {

                goto LABEL_50;
              }

              v16 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v15];
              v45 = 0;
              v17 = [v16 scanHexInt:&v45];
              if (v17)
              {
                v44[2](v44, v45);
                v18 = [[PKBCBPBarcodeFlightLeg alloc] initWithPassengerNameRecordNumber:v37 departureAirportCode:v35 destinationAirportCode:v36 airlineCode:v9 flightNumber:v11 dayOfYear:v13 seatNumber:v14];
                [v33 addObject:v18];
              }

              else
              {
                v18 = PKLogFacilityTypeGetObject(0);
                if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v57 = v15;
                  v58 = 1024;
                  LODWORD(v59) = v34;
                  _os_log_error_impl(&dword_1AD337000, &v18->super, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Invalid BCBP conditional field length %@ for leg %d. Expected a hex number.", buf, 0x12u);
                }
              }

              if ((v17 & 1) == 0)
              {
                goto LABEL_52;
              }

              v43 = v32 <= ++v34;
              if (v32 == v34)
              {
                goto LABEL_31;
              }
            }

LABEL_50:
            legs = v37;
            goto LABEL_51;
          }

          v43 = 1;
LABEL_31:
          v19 = v53[3];
          if (v19 != [v42 length])
          {
            v20 = v4[2](v4, 1);
            if (([v20 isEqualToString:@"^"]& 1) == 0)
            {
              v21 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v20;
                _os_log_error_impl(&dword_1AD337000, v21, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Invalid security data separator: %@. Expected ^.", buf, 0xCu);
              }
            }

            v44[2](v44, 1);
            v22 = v4[2](v4, 2);
            v23 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v22];
            v45 = 0;
            if (([v23 scanHexInt:&v45] & 1) == 0)
            {
              v24 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v22;
                _os_log_error_impl(&dword_1AD337000, v24, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Invalid security data length: %@. Expected a hex number.", buf, 0xCu);
              }
            }

            v44[2](v44, v45);
            v25 = v53[3];
            if (v25 != [v42 length])
            {
              v26 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v30 = v53[3];
                v31 = [v42 length];
                *buf = 134218240;
                v57 = v30;
                v58 = 2048;
                v59 = v31;
                _os_log_error_impl(&dword_1AD337000, v26, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Unexpected content after skipping security data. Read %lu of %lu characters.", buf, 0x16u);
              }
            }
          }

          objc_storeStrong(&self->_passengerName, log);
          v27 = [v33 copy];
          legs = self->_legs;
          self->_legs = v27;
LABEL_51:

LABEL_52:
          goto LABEL_53;
        }

        log = 0;
      }

      else
      {
        log = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v57 = v41;
          _os_log_error_impl(&dword_1AD337000, log, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Invalid BCBP number of legs: %@. Expected 1+", buf, 0xCu);
        }
      }

      v43 = 0;
LABEL_53:

      goto LABEL_54;
    }

    v41 = 0;
  }

  else
  {
    v41 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v40;
      _os_log_error_impl(&dword_1AD337000, v41, OS_LOG_TYPE_ERROR, "PKBCBPBarcodeFlight: Invalid BCBP format: %@. Expected format code M.", buf, 0xCu);
    }
  }

  v43 = 0;
LABEL_54:

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v52, 8);

  return v43;
}

id __49__PKBCBPBarcodeFlight__updateWithBarcodeMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = *(*(*(a1 + 48) + 8) + 24);
  *(v3 + 40) = a2;
  *(*(*(a1 + 48) + 8) + 24) += a2;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4 <= [*(a1 + 32) length])
  {
    v6 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
    v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"passengerName: '%@'; ", self->_passengerName];
  v4 = [(NSArray *)self->_legs description];
  [v3 appendFormat:@"legs: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        passengerName = v6->_passengerName;
        v8 = self->_passengerName;
        v9 = passengerName;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_16:
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        legs = self->_legs;
        v14 = v6->_legs;
        if (legs && v14)
        {
          v12 = [(NSArray *)legs isEqual:?];
        }

        else
        {
          v12 = legs == v14;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (PKBCBPBarcodeFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKBCBPBarcodeFlight;
  v5 = [(PKBCBPBarcodeFlight *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passengerName"];
    passengerName = v5->_passengerName;
    v5->_passengerName = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"legs"];
    legs = v5->_legs;
    v5->_legs = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passengerName = self->_passengerName;
  coderCopy = coder;
  [coderCopy encodeObject:passengerName forKey:@"passengerName"];
  [coderCopy encodeObject:self->_legs forKey:@"legs"];
}

@end