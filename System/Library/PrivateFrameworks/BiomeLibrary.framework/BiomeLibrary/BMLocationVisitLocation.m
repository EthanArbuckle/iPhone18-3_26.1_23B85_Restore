@interface BMLocationVisitLocation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLocationVisitLocation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLocationVisitLocation)initWithLatitude:(id)a3 longitude:(id)a4 horizontalUncertainty:(id)a5 altitude:(id)a6 verticalUncertainty:(id)a7 date:(id)a8 referenceFrame:(int)a9 sourceAccuracy:(int)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)date;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLocationVisitLocation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLocationVisitLocation hasLatitude](self, "hasLatitude") || [v5 hasLatitude])
    {
      if (![(BMLocationVisitLocation *)self hasLatitude])
      {
        goto LABEL_34;
      }

      if (![v5 hasLatitude])
      {
        goto LABEL_34;
      }

      [(BMLocationVisitLocation *)self latitude];
      v7 = v6;
      [v5 latitude];
      if (v7 != v8)
      {
        goto LABEL_34;
      }
    }

    if (-[BMLocationVisitLocation hasLongitude](self, "hasLongitude") || [v5 hasLongitude])
    {
      if (![(BMLocationVisitLocation *)self hasLongitude])
      {
        goto LABEL_34;
      }

      if (![v5 hasLongitude])
      {
        goto LABEL_34;
      }

      [(BMLocationVisitLocation *)self longitude];
      v10 = v9;
      [v5 longitude];
      if (v10 != v11)
      {
        goto LABEL_34;
      }
    }

    if (-[BMLocationVisitLocation hasHorizontalUncertainty](self, "hasHorizontalUncertainty") || [v5 hasHorizontalUncertainty])
    {
      if (![(BMLocationVisitLocation *)self hasHorizontalUncertainty])
      {
        goto LABEL_34;
      }

      if (![v5 hasHorizontalUncertainty])
      {
        goto LABEL_34;
      }

      [(BMLocationVisitLocation *)self horizontalUncertainty];
      v13 = v12;
      [v5 horizontalUncertainty];
      if (v13 != v14)
      {
        goto LABEL_34;
      }
    }

    if (-[BMLocationVisitLocation hasAltitude](self, "hasAltitude") || [v5 hasAltitude])
    {
      if (![(BMLocationVisitLocation *)self hasAltitude])
      {
        goto LABEL_34;
      }

      if (![v5 hasAltitude])
      {
        goto LABEL_34;
      }

      [(BMLocationVisitLocation *)self altitude];
      v16 = v15;
      [v5 altitude];
      if (v16 != v17)
      {
        goto LABEL_34;
      }
    }

    if (-[BMLocationVisitLocation hasVerticalUncertainty](self, "hasVerticalUncertainty") || [v5 hasVerticalUncertainty])
    {
      if (![(BMLocationVisitLocation *)self hasVerticalUncertainty])
      {
        goto LABEL_34;
      }

      if (![v5 hasVerticalUncertainty])
      {
        goto LABEL_34;
      }

      [(BMLocationVisitLocation *)self verticalUncertainty];
      v19 = v18;
      [v5 verticalUncertainty];
      if (v19 != v20)
      {
        goto LABEL_34;
      }
    }

    v21 = [(BMLocationVisitLocation *)self date];
    v22 = [v5 date];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMLocationVisitLocation *)self date];
      v25 = [v5 date];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_34;
      }
    }

    v28 = [(BMLocationVisitLocation *)self referenceFrame];
    if (v28 == [v5 referenceFrame])
    {
      v29 = [(BMLocationVisitLocation *)self sourceAccuracy];
      v27 = v29 == [v5 sourceAccuracy];
LABEL_35:

      goto LABEL_36;
    }

LABEL_34:
    v27 = 0;
    goto LABEL_35;
  }

  v27 = 0;
LABEL_36:

  return v27;
}

- (NSDate)date
{
  if (self->_hasRaw_date)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_date];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v43[8] = *MEMORY[0x1E69E9840];
  if (![(BMLocationVisitLocation *)self hasLatitude]|| ([(BMLocationVisitLocation *)self latitude], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMLocationVisitLocation *)self latitude];
    v4 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self latitude];
    v5 = [v4 numberWithDouble:?];
  }

  if (![(BMLocationVisitLocation *)self hasLongitude]|| ([(BMLocationVisitLocation *)self longitude], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMLocationVisitLocation *)self longitude];
    v7 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self longitude];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMLocationVisitLocation *)self hasHorizontalUncertainty]|| ([(BMLocationVisitLocation *)self horizontalUncertainty], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMLocationVisitLocation *)self horizontalUncertainty];
    v10 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self horizontalUncertainty];
    v11 = [v10 numberWithDouble:?];
  }

  if (![(BMLocationVisitLocation *)self hasAltitude]|| ([(BMLocationVisitLocation *)self altitude], fabs(v12) == INFINITY))
  {
    v41 = 0;
  }

  else
  {
    [(BMLocationVisitLocation *)self altitude];
    v13 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self altitude];
    v41 = [v13 numberWithDouble:?];
  }

  if (![(BMLocationVisitLocation *)self hasVerticalUncertainty]|| ([(BMLocationVisitLocation *)self verticalUncertainty], fabs(v14) == INFINITY))
  {
    v40 = 0;
  }

  else
  {
    [(BMLocationVisitLocation *)self verticalUncertainty];
    v15 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self verticalUncertainty];
    v40 = [v15 numberWithDouble:?];
  }

  v16 = [(BMLocationVisitLocation *)self date];
  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    [(BMLocationVisitLocation *)self date];
    v19 = v18 = v11;
    [v19 timeIntervalSince1970];
    v20 = [v17 numberWithDouble:?];

    v11 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationVisitLocation referenceFrame](self, "referenceFrame")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocationVisitLocation sourceAccuracy](self, "sourceAccuracy")}];
  v42[0] = @"latitude";
  v23 = v5;
  if (!v5)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v23;
  v43[0] = v23;
  v42[1] = @"longitude";
  v24 = v8;
  if (!v8)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v24;
  v43[1] = v24;
  v42[2] = @"horizontalUncertainty";
  v25 = v11;
  v38 = v11;
  if (!v11)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v25;
  v43[2] = v25;
  v42[3] = @"altitude";
  v26 = v41;
  if (!v41)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v5;
  v43[3] = v26;
  v42[4] = @"verticalUncertainty";
  v27 = v40;
  if (!v40)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v8;
  v43[4] = v27;
  v42[5] = @"date";
  v29 = v20;
  if (!v20)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v43[5] = v29;
  v42[6] = @"referenceFrame";
  v30 = v21;
  if (!v21)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v43[6] = v30;
  v42[7] = @"sourceAccuracy";
  v31 = v22;
  if (!v22)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v43[7] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:8];
  if (v22)
  {
    if (v21)
    {
      goto LABEL_42;
    }

LABEL_54:

    if (v20)
    {
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  if (!v21)
  {
    goto LABEL_54;
  }

LABEL_42:
  if (v20)
  {
    goto LABEL_43;
  }

LABEL_55:

LABEL_43:
  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (v38)
  {
    if (v28)
    {
      goto LABEL_49;
    }

LABEL_57:

    if (v39)
    {
      goto LABEL_50;
    }

    goto LABEL_58;
  }

  if (!v28)
  {
    goto LABEL_57;
  }

LABEL_49:
  if (v39)
  {
    goto LABEL_50;
  }

LABEL_58:

LABEL_50:
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BMLocationVisitLocation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v108[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"latitude"];
  v92 = v6;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"longitude"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v24 = 0;
          goto LABEL_72;
        }

        v32 = a4;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"longitude"];
        v106 = v35;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v36 = [v33 initWithDomain:v34 code:2 userInfo:v11];
        v10 = 0;
        v24 = 0;
        *v32 = v36;
        goto LABEL_71;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"horizontalUncertainty"];
    v90 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v35 = 0;
          v24 = 0;
          goto LABEL_71;
        }

        v37 = a4;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v40 = v8;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v77 = objc_opt_class();
        v42 = v41;
        v8 = v40;
        v91 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v77, @"horizontalUncertainty"];
        v104 = v91;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v44 = v38;
        v45 = v43;
        v46 = v39;
        v10 = v90;
        v35 = 0;
        v24 = 0;
        *v37 = [v44 initWithDomain:v46 code:2 userInfo:v43];
LABEL_70:

LABEL_71:
        goto LABEL_72;
      }

      v12 = self;
      v13 = v9;
      v14 = v7;
      v88 = v11;
    }

    else
    {
      v12 = self;
      v13 = v9;
      v14 = v7;
      v88 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"altitude"];
    v82 = v11;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v91 = 0;
          v24 = 0;
          v35 = v88;
          v45 = v15;
          v7 = v14;
          v9 = v13;
          self = v12;
          goto LABEL_70;
        }

        v85 = a4;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v87 = v8;
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"altitude"];
        v102 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v51 = v47;
        v45 = v15;
        v52 = v48;
        v10 = v90;
        v83 = v50;
        v91 = 0;
        v24 = 0;
        *v85 = [v51 initWithDomain:v52 code:2 userInfo:?];
        v7 = v14;
        v9 = v13;
        self = v12;
        v53 = v49;
        v8 = v87;
        v35 = v88;
        goto LABEL_69;
      }

      v81 = v15;
      v91 = v15;
    }

    else
    {
      v81 = v15;
      v91 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"verticalUncertainty"];
    v7 = v14;
    v83 = v16;
    if (v16)
    {
      v17 = v16;
      objc_opt_class();
      v9 = v13;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        self = v12;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v53 = 0;
            v24 = 0;
            v35 = v88;
            v45 = v81;
            goto LABEL_69;
          }

          v54 = a4;
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = v8;
          v57 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"verticalUncertainty"];
          v100 = v84;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v58 = v57;
          v8 = v56;
          v53 = 0;
          v24 = 0;
          *v54 = [v55 initWithDomain:v58 code:2 userInfo:v18];
          v11 = v82;
          goto LABEL_67;
        }

        v80 = v17;
LABEL_24:
        v18 = [v92 objectForKeyedSubscript:@"date"];
        v89 = self;
        v86 = v8;
        if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v84 = 0;
          goto LABEL_46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = MEMORY[0x1E695DF00];
          v26 = a4;
          v27 = v18;
          v28 = [v25 alloc];
          [v27 doubleValue];
          v30 = v29;

          a4 = v26;
          v31 = [v28 initWithTimeIntervalSince1970:v30];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v84 = [v59 dateFromString:v18];

LABEL_46:
            v60 = [v92 objectForKeyedSubscript:@"referenceFrame"];
            v61 = a4;
            if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v62 = 0;
              goto LABEL_54;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = v60;
LABEL_53:
              v62 = v63;
LABEL_54:
              v64 = [v92 objectForKeyedSubscript:@"sourceAccuracy"];
              if (v64)
              {
                objc_opt_class();
                v53 = v80;
                if (objc_opt_isKindOfClass())
                {
                  v65 = 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v66 = v64;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (v61)
                      {
                        v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v78 = *MEMORY[0x1E698F240];
                        v93 = *MEMORY[0x1E696A578];
                        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sourceAccuracy"];
                        v94 = v72;
                        v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                        *v61 = [v79 initWithDomain:v78 code:2 userInfo:v73];
                      }

                      v65 = 0;
                      v24 = 0;
                      goto LABEL_64;
                    }

                    v66 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationVisitLocationSourceAccuracyFromString(v64)];
                  }

                  v65 = v66;
                }
              }

              else
              {
                v65 = 0;
                v53 = v80;
              }

              v24 = -[BMLocationVisitLocation initWithLatitude:longitude:horizontalUncertainty:altitude:verticalUncertainty:date:referenceFrame:sourceAccuracy:](v89, "initWithLatitude:longitude:horizontalUncertainty:altitude:verticalUncertainty:date:referenceFrame:sourceAccuracy:", v86, v90, v88, v91, v53, v84, __PAIR64__([v65 intValue], objc_msgSend(v62, "intValue")));
              v89 = v24;
LABEL_64:
              v11 = v82;
LABEL_65:

LABEL_66:
              self = v89;
              v8 = v86;
LABEL_67:
              v45 = v81;
LABEL_68:

              v10 = v90;
              v35 = v88;
LABEL_69:

              goto LABEL_70;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = [MEMORY[0x1E696AD98] numberWithInt:BMLocationVisitLocationReferenceFrameFromString(v60)];
              goto LABEL_53;
            }

            if (a4)
            {
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = *MEMORY[0x1E698F240];
              v95 = *MEMORY[0x1E696A578];
              v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"referenceFrame"];
              v96 = v65;
              v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v71 = [v69 initWithDomain:v70 code:2 userInfo:v64];
              v62 = 0;
              v24 = 0;
              *v61 = v71;
              v11 = v82;
              v53 = v80;
              goto LABEL_65;
            }

            v62 = 0;
            v24 = 0;
LABEL_89:
            v11 = v82;
            v53 = v80;
            goto LABEL_66;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v84 = 0;
              v24 = 0;
              v53 = v80;
              v45 = v81;
              goto LABEL_68;
            }

            v74 = a4;
            v75 = objc_alloc(MEMORY[0x1E696ABC0]);
            v76 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"date"];
            v98 = v62;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v84 = 0;
            v24 = 0;
            *v74 = [v75 initWithDomain:v76 code:2 userInfo:v60];
            goto LABEL_89;
          }

          v31 = v18;
        }

        v84 = v31;
        goto LABEL_46;
      }

      v80 = 0;
    }

    else
    {
      v80 = 0;
      v9 = v13;
    }

    self = v12;
    goto LABEL_24;
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
    v24 = 0;
    goto LABEL_73;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v107 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"latitude"];
  v108[0] = v22;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];
  v23 = v21;
  v10 = v22;
  v8 = 0;
  v24 = 0;
  *v19 = [v20 initWithDomain:v23 code:2 userInfo:v9];
LABEL_72:

LABEL_73:
  v67 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationVisitLocation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (self->_hasLatitude)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasLongitude)
  {
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasHorizontalUncertainty)
  {
    horizontalUncertainty = self->_horizontalUncertainty;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAltitude)
  {
    altitude = self->_altitude;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasVerticalUncertainty)
  {
    verticalUncertainty = self->_verticalUncertainty;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_date)
  {
    raw_date = self->_raw_date;
    PBDataWriterWriteDoubleField();
  }

  referenceFrame = self->_referenceFrame;
  PBDataWriterWriteUint32Field();
  sourceAccuracy = self->_sourceAccuracy;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = BMLocationVisitLocation;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_92;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_90;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v53) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_90;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v5->_hasVerticalUncertainty = 1;
          v53 = 0;
          v31 = [v4 position] + 8;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 8, v32 <= objc_msgSend(v4, "length")))
          {
            v44 = [v4 data];
            [v44 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v42 = v53;
          v43 = 88;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_65;
          }

          v5->_hasRaw_date = 1;
          v53 = 0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v47 = [v4 data];
            [v47 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v42 = v53;
          v43 = 24;
        }

LABEL_88:
        *(&v5->super.super.isa + v43) = v42;
        goto LABEL_89;
      }

      if (v15 == 7)
      {
        v35 = 0;
        v36 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v37 = [v4 position] + 1;
          if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
          {
            v39 = [v4 data];
            [v39 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v24 |= (v53 & 0x7F) << v35;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v28 = v36++ > 8;
          if (v28)
          {
            goto LABEL_69;
          }
        }

        if (([v4 hasError] & 1) != 0 || v24 > 2)
        {
LABEL_69:
          LODWORD(v24) = 0;
        }

        v40 = 44;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_65:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_91;
          }

          goto LABEL_89;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v24 |= (v53 & 0x7F) << v22;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v28 = v23++ > 8;
          if (v28)
          {
            goto LABEL_73;
          }
        }

        if (([v4 hasError] & 1) != 0 || v24 > 2)
        {
LABEL_73:
          LODWORD(v24) = 0;
        }

        v40 = 48;
      }

      *(&v5->super.super.isa + v40) = v24;
LABEL_89:
      v49 = [v4 position];
      if (v49 >= [v4 length])
      {
        goto LABEL_90;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v5->_hasHorizontalUncertainty = 1;
        v53 = 0;
        v33 = [v4 position] + 8;
        if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 8, v34 <= objc_msgSend(v4, "length")))
        {
          v45 = [v4 data];
          [v45 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v42 = v53;
        v43 = 72;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_65;
        }

        v5->_hasAltitude = 1;
        v53 = 0;
        v20 = [v4 position] + 8;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
        {
          v48 = [v4 data];
          [v48 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v42 = v53;
        v43 = 80;
      }
    }

    else if (v15 == 1)
    {
      v5->_hasLatitude = 1;
      v53 = 0;
      v29 = [v4 position] + 8;
      if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 8, v30 <= objc_msgSend(v4, "length")))
      {
        v41 = [v4 data];
        [v41 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v42 = v53;
      v43 = 56;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_65;
      }

      v5->_hasLongitude = 1;
      v53 = 0;
      v16 = [v4 position] + 8;
      if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
      {
        v46 = [v4 data];
        [v46 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v42 = v53;
      v43 = 64;
    }

    goto LABEL_88;
  }

LABEL_90:
  if ([v4 hasError])
  {
LABEL_91:
    v50 = 0;
  }

  else
  {
LABEL_92:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMLocationVisitLocation *)self latitude];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMLocationVisitLocation *)self longitude];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMLocationVisitLocation *)self horizontalUncertainty];
  v9 = [v8 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMLocationVisitLocation *)self altitude];
  v11 = [v10 numberWithDouble:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMLocationVisitLocation *)self verticalUncertainty];
  v13 = [v12 numberWithDouble:?];
  v14 = [(BMLocationVisitLocation *)self date];
  v15 = BMLocationVisitLocationReferenceFrameAsString([(BMLocationVisitLocation *)self referenceFrame]);
  v16 = BMLocationVisitLocationSourceAccuracyAsString([(BMLocationVisitLocation *)self sourceAccuracy]);
  v17 = [v3 initWithFormat:@"BMLocationVisitLocation with latitude: %@, longitude: %@, horizontalUncertainty: %@, altitude: %@, verticalUncertainty: %@, date: %@, referenceFrame: %@, sourceAccuracy: %@", v5, v7, v9, v11, v13, v14, v15, v16];

  return v17;
}

- (BMLocationVisitLocation)initWithLatitude:(id)a3 longitude:(id)a4 horizontalUncertainty:(id)a5 altitude:(id)a6 verticalUncertainty:(id)a7 date:(id)a8 referenceFrame:(int)a9 sourceAccuracy:(int)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v30.receiver = self;
  v30.super_class = BMLocationVisitLocation;
  v22 = [(BMEventBase *)&v30 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v22->_hasLatitude = 1;
      [v16 doubleValue];
    }

    else
    {
      v22->_hasLatitude = 0;
      v23 = -1.0;
    }

    v22->_latitude = v23;
    if (v17)
    {
      v22->_hasLongitude = 1;
      [v17 doubleValue];
    }

    else
    {
      v22->_hasLongitude = 0;
      v24 = -1.0;
    }

    v22->_longitude = v24;
    if (v18)
    {
      v22->_hasHorizontalUncertainty = 1;
      [v18 doubleValue];
    }

    else
    {
      v22->_hasHorizontalUncertainty = 0;
      v25 = -1.0;
    }

    v22->_horizontalUncertainty = v25;
    if (v19)
    {
      v22->_hasAltitude = 1;
      [v19 doubleValue];
    }

    else
    {
      v22->_hasAltitude = 0;
      v26 = -1.0;
    }

    v22->_altitude = v26;
    if (v20)
    {
      v22->_hasVerticalUncertainty = 1;
      [v20 doubleValue];
    }

    else
    {
      v22->_hasVerticalUncertainty = 0;
      v27 = -1.0;
    }

    v22->_verticalUncertainty = v27;
    if (v21)
    {
      v22->_hasRaw_date = 1;
      [v21 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_date = 0;
      v28 = -1.0;
    }

    v22->_raw_date = v28;
    v22->_referenceFrame = a9;
    v22->_sourceAccuracy = a10;
  }

  return v22;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latitude" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"longitude" number:2 type:0 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"horizontalUncertainty" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"altitude" number:4 type:0 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"verticalUncertainty" number:5 type:0 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"date" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"referenceFrame" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceAccuracy" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latitude" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"longitude" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"horizontalUncertainty" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"altitude" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"verticalUncertainty" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"date" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"referenceFrame" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceAccuracy" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMLocationVisitLocation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end