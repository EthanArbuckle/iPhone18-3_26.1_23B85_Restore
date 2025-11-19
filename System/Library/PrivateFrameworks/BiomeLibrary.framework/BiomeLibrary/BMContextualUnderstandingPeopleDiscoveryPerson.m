@interface BMContextualUnderstandingPeopleDiscoveryPerson
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithContactID:(id)a3 identifier:(id)a4 name:(id)a5 flags:(id)a6 activityLevel:(id)a7 proximity:(id)a8;
- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMContextualUnderstandingPeopleDiscoveryPerson

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
    v7 = [v5 contactID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
      v10 = [v5 contactID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v13 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
    v14 = [v5 identifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
      v17 = [v5 identifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    v19 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
    v20 = [v5 name];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
      v23 = [v5 name];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasFlags](self, "hasFlags") && ![v5 hasFlags] || -[BMContextualUnderstandingPeopleDiscoveryPerson hasFlags](self, "hasFlags") && objc_msgSend(v5, "hasFlags") && (v25 = -[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags"), v25 == objc_msgSend(v5, "flags")))
    {
      if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasActivityLevel](self, "hasActivityLevel") && ![v5 hasActivityLevel] || -[BMContextualUnderstandingPeopleDiscoveryPerson hasActivityLevel](self, "hasActivityLevel") && objc_msgSend(v5, "hasActivityLevel") && (v26 = -[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel"), v26 == objc_msgSend(v5, "activityLevel")))
      {
        if (!-[BMContextualUnderstandingPeopleDiscoveryPerson hasProximity](self, "hasProximity") && ![v5 hasProximity])
        {
          v12 = 1;
          goto LABEL_31;
        }

        if (-[BMContextualUnderstandingPeopleDiscoveryPerson hasProximity](self, "hasProximity") && [v5 hasProximity])
        {
          v27 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self proximity];
          v12 = v27 == [v5 proximity];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
  v4 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
  v5 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasFlags])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasActivityLevel])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMContextualUnderstandingPeopleDiscoveryPerson *)self hasProximity])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson proximity](self, "proximity")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"contactID";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v9;
  v20 = v4;
  v23[0] = v9;
  v22[1] = @"identifier";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v10;
  v22[2] = @"name";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = v11;
  v22[3] = @"flags";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"activityLevel";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"proximity";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_33:

    if (v6)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_24:
  if (v6)
  {
    goto LABEL_25;
  }

LABEL_34:

LABEL_25:
  if (!v5)
  {
  }

  if (v20)
  {
    if (v21)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v21)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"contactID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          v17 = 0;
          goto LABEL_50;
        }

        v23 = v7;
        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = a4;
        v26 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v68 = v27;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v28 = v25;
        v8 = v24;
        v7 = v23;
        v29 = v26;
        a4 = v27;
        v21 = 0;
        v17 = 0;
        *v49 = [v28 initWithDomain:v29 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v57 = v9;
    }

    else
    {
      v57 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"name"];
    v58 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v21 = v57;
          goto LABEL_49;
        }

        v30 = v7;
        v31 = v8;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = a4;
        v33 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
        v66 = v56;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v34 = v32;
        v8 = v31;
        v7 = v30;
        v35 = [v34 initWithDomain:v33 code:2 userInfo:v11];
        a4 = 0;
        v17 = 0;
        *v50 = v35;
        v21 = v57;
LABEL_48:

        self = v58;
LABEL_49:

        goto LABEL_50;
      }

      v55 = v10;
    }

    else
    {
      v55 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"flags"];
    v53 = v7;
    v54 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v56 = 0;
          v17 = 0;
          v21 = v57;
          a4 = v55;
          goto LABEL_48;
        }

        v36 = v8;
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flags"];
        v64 = v14;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v39 = v37;
        v8 = v36;
        v7 = v53;
        v40 = [v39 initWithDomain:v38 code:2 userInfo:v12];
        v56 = 0;
        v17 = 0;
        *a4 = v40;
        goto LABEL_57;
      }

      v56 = v11;
    }

    else
    {
      v56 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"activityLevel"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v8;
      v14 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v12;
LABEL_16:
      v15 = [v6 objectForKeyedSubscript:@"proximity"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_19:
        a4 = v55;
        v17 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)v58 initWithContactID:v13 identifier:v57 name:v55 flags:v56 activityLevel:v14 proximity:v16];
        v58 = v17;
LABEL_46:

        v8 = v13;
        v7 = v53;
LABEL_47:

        v21 = v57;
        v9 = v54;
        goto LABEL_48;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      if (a4)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"proximity"];
        v60 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        *a4 = [v52 initWithDomain:v48 code:2 userInfo:v45];
      }

      v16 = 0;
      v17 = 0;
LABEL_45:
      a4 = v55;
      goto LABEL_46;
    }

    if (a4)
    {
      v13 = v8;
      v51 = a4;
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v61 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activityLevel"];
      v62 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v43 = [v41 initWithDomain:v42 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *v51 = v43;
      goto LABEL_45;
    }

    v14 = 0;
    v17 = 0;
LABEL_57:
    a4 = v55;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v17 = 0;
    goto LABEL_51;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = a4;
  v20 = *MEMORY[0x1E698F240];
  v69 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactID"];
  v70[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v22 = [v18 initWithDomain:v20 code:2 userInfo:v9];
  v8 = 0;
  v17 = 0;
  *v19 = v22;
LABEL_50:

LABEL_51:
  v46 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingPeopleDiscoveryPerson *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_hasFlags)
  {
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_hasActivityLevel)
  {
    activityLevel = self->_activityLevel;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_hasProximity)
  {
    proximity = self->_proximity;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMContextualUnderstandingPeopleDiscoveryPerson;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_74;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v43 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasFlags = 1;
            while (1)
            {
              v43 = 0;
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v27 |= (v43 & 0x7F) << v25;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_61;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_61:
            v38 = 24;
            break;
          case 5:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasActivityLevel = 1;
            while (1)
            {
              v43 = 0;
              v35 = [v4 position] + 1;
              if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
              {
                v37 = [v4 data];
                [v37 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v34 |= (v43 & 0x7F) << v32;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_69;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v34;
            }

LABEL_69:
            v38 = 28;
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasProximity = 1;
            while (1)
            {
              v43 = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v43 & 0x7F) << v18;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_65;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_65:
            v38 = 32;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_73;
            }

            goto LABEL_71;
        }

        *(&v5->super.super.isa + v38) = v24;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          default:
            goto LABEL_45;
        }

        v31 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_71:
      v39 = [v4 position];
    }

    while (v39 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_73:
    v40 = 0;
  }

  else
  {
LABEL_74:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self contactID];
  v5 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self identifier];
  v6 = [(BMContextualUnderstandingPeopleDiscoveryPerson *)self name];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson flags](self, "flags")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson activityLevel](self, "activityLevel")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingPeopleDiscoveryPerson proximity](self, "proximity")}];
  v10 = [v3 initWithFormat:@"BMContextualUnderstandingPeopleDiscoveryPerson with contactID: %@, identifier: %@, name: %@, flags: %@, activityLevel: %@, proximity: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMContextualUnderstandingPeopleDiscoveryPerson)initWithContactID:(id)a3 identifier:(id)a4 name:(id)a5 flags:(id)a6 activityLevel:(id)a7 proximity:(id)a8
{
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = BMContextualUnderstandingPeopleDiscoveryPerson;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_contactID, a3);
    objc_storeStrong(&v20->_identifier, a4);
    objc_storeStrong(&v20->_name, a5);
    if (v17)
    {
      v20->_hasFlags = 1;
      v21 = [v17 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasFlags = 0;
    }

    v20->_flags = v21;
    if (v18)
    {
      v20->_hasActivityLevel = 1;
      v22 = [v18 unsignedIntValue];
    }

    else
    {
      v22 = 0;
      v20->_hasActivityLevel = 0;
    }

    v20->_activityLevel = v22;
    if (v19)
    {
      v20->_hasProximity = 1;
      v23 = [v19 unsignedIntValue];
    }

    else
    {
      v23 = 0;
      v20->_hasProximity = 0;
    }

    v20->_proximity = v23;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactID" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flags" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityLevel" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proximity" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flags" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityLevel" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proximity" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMContextualUnderstandingPeopleDiscoveryPerson alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end