@interface BMMediaRouteOutputDevice
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMediaRouteOutputDevice)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMMediaRouteOutputDevice)initWithOutputDeviceID:(id)a3 type:(int)a4 subType:(int)a5 clusterType:(int)a6 flattenedClusterLeafMembers:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_flattenedClusterLeafMembersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaRouteOutputDevice

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMediaRouteOutputDevice *)self outputDeviceID];
  v5 = BMMediaRouteOutputDeviceTypeAsString([(BMMediaRouteOutputDevice *)self type]);
  v6 = BMMediaRouteOutputDeviceSubTypeAsString([(BMMediaRouteOutputDevice *)self subType]);
  v7 = BMMediaRouteOutputDeviceClusterTypeAsString([(BMMediaRouteOutputDevice *)self clusterType]);
  v8 = [(BMMediaRouteOutputDevice *)self flattenedClusterLeafMembers];
  v9 = [v3 initWithFormat:@"BMMediaRouteOutputDevice with outputDeviceID: %@, type: %@, subType: %@, clusterType: %@, flattenedClusterLeafMembers: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMediaRouteOutputDevice *)self outputDeviceID];
    v7 = [v5 outputDeviceID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMediaRouteOutputDevice *)self outputDeviceID];
      v10 = [v5 outputDeviceID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v13 = [(BMMediaRouteOutputDevice *)self type];
    if (v13 == [v5 type])
    {
      v14 = [(BMMediaRouteOutputDevice *)self subType];
      if (v14 == [v5 subType])
      {
        v15 = [(BMMediaRouteOutputDevice *)self clusterType];
        if (v15 == [v5 clusterType])
        {
          v16 = [(BMMediaRouteOutputDevice *)self flattenedClusterLeafMembers];
          v17 = [v5 flattenedClusterLeafMembers];
          if (v16 == v17)
          {
            v12 = 1;
          }

          else
          {
            v18 = [(BMMediaRouteOutputDevice *)self flattenedClusterLeafMembers];
            v19 = [v5 flattenedClusterLeafMembers];
            v12 = [v18 isEqual:v19];
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:
    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMediaRouteOutputDevice *)self outputDeviceID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRouteOutputDevice type](self, "type")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRouteOutputDevice subType](self, "subType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaRouteOutputDevice clusterType](self, "clusterType")}];
  v7 = [(BMMediaRouteOutputDevice *)self _flattenedClusterLeafMembersJSONArray];
  v18 = @"outputDeviceID";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"type";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"subType";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"clusterType";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"flattenedClusterLeafMembers";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_flattenedClusterLeafMembersJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMediaRouteOutputDevice *)self flattenedClusterLeafMembers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMediaRouteOutputDevice)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v97[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"outputDeviceID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"type"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76 = v9;
      }

      else
      {
        v35 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v30 = 0;
            goto LABEL_62;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = v9;
          v53 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v54 = p_isa;
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v95 = v77;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v56 = v53;
          v9 = v52;
          v75 = v55;
          v30 = 0;
          p_isa = 0;
          *v54 = [v51 initWithDomain:v56 code:2 userInfo:?];
          v8 = v35;
          goto LABEL_61;
        }

        v76 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteOutputDeviceTypeFromString(v9)];
      }
    }

    else
    {
      v76 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"subType"];
    v75 = v10;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v77 = v11;
      }

      else
      {
        v70 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v77 = 0;
            goto LABEL_60;
          }

          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = v9;
          v59 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v60 = p_isa;
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subType"];
          v93 = v61;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v62 = v59;
          v9 = v58;
          v27 = v61;
          v77 = 0;
          p_isa = 0;
          *v60 = [v57 initWithDomain:v62 code:2 userInfo:v44];
          v8 = v70;
LABEL_59:

LABEL_60:
          v30 = v76;
LABEL_61:

          goto LABEL_62;
        }

        v77 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteOutputDeviceSubTypeFromString(v11)];
      }
    }

    else
    {
      v77 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"clusterType"];
    v72 = v7;
    v73 = v9;
    v74 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (p_isa)
          {
            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = *MEMORY[0x1E698F240];
            v90 = *MEMORY[0x1E696A578];
            v65 = p_isa;
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"clusterType"];
            v91 = v14;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            p_isa = 0;
            *v65 = [v63 initWithDomain:v64 code:2 userInfo:v17];
            v27 = 0;
            goto LABEL_56;
          }

          v27 = 0;
LABEL_58:
          v44 = v74;
          goto LABEL_59;
        }

        v71 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaRouteOutputDeviceClusterTypeFromString(v13)];
      }
    }

    else
    {
      v71 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"flattenedClusterLeafMembers"];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v66 = p_isa;
      v67 = self;
      v68 = v6;

      v14 = 0;
LABEL_18:
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v14 = v14;
      v18 = [v14 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (!v18)
      {
        goto LABEL_28;
      }

      v19 = v18;
      v20 = *v80;
      v69 = v8;
LABEL_20:
      v21 = 0;
      while (1)
      {
        if (*v80 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v79 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = v68;
          v8 = v69;
          v36 = v66;
          if (!v66)
          {
            goto LABEL_54;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"flattenedClusterLeafMembers"];
          v84 = v23;
          v39 = MEMORY[0x1E695DF20];
          v40 = &v84;
          v41 = &v83;
          goto LABEL_47;
        }

        v23 = v22;
        v24 = [BMMediaRouteOutputDeviceClusterMember alloc];
        v78 = 0;
        v25 = [(BMMediaRouteOutputDeviceClusterMember *)v24 initWithJSONDictionary:v23 error:&v78];
        v26 = v78;
        if (v26)
        {
          v42 = v26;
          if (v66)
          {
            v43 = v26;
            *v66 = v42;
          }

          v6 = v68;
          v8 = v69;
LABEL_53:

LABEL_54:
          p_isa = 0;
          self = v67;
          goto LABEL_55;
        }

        [v17 addObject:v25];

        if (v19 == ++v21)
        {
          v19 = [v14 countByEnumeratingWithState:&v79 objects:v87 count:16];
          v8 = v69;
          if (v19)
          {
            goto LABEL_20;
          }

LABEL_28:

          v27 = v71;
          self = -[BMMediaRouteOutputDevice initWithOutputDeviceID:type:subType:clusterType:flattenedClusterLeafMembers:](v67, "initWithOutputDeviceID:type:subType:clusterType:flattenedClusterLeafMembers:", v8, [v76 intValue], objc_msgSend(v77, "intValue"), objc_msgSend(v71, "intValue"), v17);
          p_isa = &self->super.super.isa;
          v6 = v68;
LABEL_56:

          v7 = v72;
          v9 = v73;
          goto LABEL_57;
        }
      }

      v6 = v68;
      v8 = v69;
      v36 = v66;
      if (!v66)
      {
        goto LABEL_54;
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v85 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"flattenedClusterLeafMembers"];
      v86 = v23;
      v39 = MEMORY[0x1E695DF20];
      v40 = &v86;
      v41 = &v85;
LABEL_47:
      v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
      *v36 = [v37 initWithDomain:v38 code:2 userInfo:v42];
      goto LABEL_53;
    }

    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v66 = p_isa;
      v67 = self;
      v68 = v6;
      goto LABEL_18;
    }

    if (p_isa)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"flattenedClusterLeafMembers"];
      v89 = v17;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v50 = v49 = p_isa;
      *v49 = [v47 initWithDomain:v48 code:2 userInfo:v50];

      p_isa = 0;
LABEL_55:
      v27 = v71;
      goto LABEL_56;
    }

    v9 = v73;
    v27 = v71;
LABEL_57:

    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_63;
  }

  v28 = objc_alloc(MEMORY[0x1E696ABC0]);
  v29 = *MEMORY[0x1E698F240];
  v96 = *MEMORY[0x1E696A578];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"outputDeviceID"];
  v97[0] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v32 = v29;
  v9 = v31;
  v33 = [v28 initWithDomain:v32 code:2 userInfo:v31];
  v8 = 0;
  v34 = p_isa;
  p_isa = 0;
  *v34 = v33;
LABEL_62:

LABEL_63:
  v45 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRouteOutputDevice *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_outputDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  subType = self->_subType;
  PBDataWriterWriteUint32Field();
  clusterType = self->_clusterType;
  PBDataWriterWriteUint32Field();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_flattenedClusterLeafMembers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v13 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMMediaRouteOutputDevice;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_71;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v46[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v46[0] & 0x7F) << v8;
        if ((v46[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_71;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v29 = 0;
        v30 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v31 = [v4 position] + 1;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:v46 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v46[0] & 0x7F) << v29;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v23 = v30++ > 8;
          if (v23)
          {
            goto LABEL_59;
          }
        }

        if (([v4 hasError] & 1) != 0 || v19 > 0x15)
        {
LABEL_59:
          LODWORD(v19) = 0;
        }

        v38 = 24;
        goto LABEL_69;
      }

      if (v16 != 5)
      {
        if (v16 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v46[0] & 0x7F) << v17;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_63;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 3)
          {
LABEL_63:
            LODWORD(v19) = 0;
          }

          v38 = 28;
LABEL_69:
          *(&v5->super.super.isa + v38) = v19;
          goto LABEL_70;
        }

LABEL_55:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_70;
      }

      v46[0] = 0;
      v46[1] = 0;
      if (!PBReaderPlaceMark() || (v34 = [[BMMediaRouteOutputDeviceClusterMember alloc] initByReadFrom:v4]) == 0)
      {
LABEL_75:

        goto LABEL_72;
      }

      v35 = v34;
      [v6 addObject:v34];
      PBReaderRecallMark();

LABEL_70:
      v39 = [v4 position];
      if (v39 >= [v4 length])
      {
        goto LABEL_71;
      }
    }

    if (v16 == 1)
    {
      v36 = PBReaderReadString();
      outputDeviceID = v5->_outputDeviceID;
      v5->_outputDeviceID = v36;

      goto LABEL_70;
    }

    if (v16 == 2)
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v46[0]) = 0;
        v26 = [v4 position] + 1;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v46[0] & 0x7F) << v24;
        if ((v46[0] & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v23 = v25++ > 8;
        if (v23)
        {
          goto LABEL_67;
        }
      }

      if (([v4 hasError] & 1) != 0 || v19 > 5)
      {
LABEL_67:
        LODWORD(v19) = 0;
      }

      v38 = 20;
      goto LABEL_69;
    }

    goto LABEL_55;
  }

LABEL_71:
  v40 = [v6 copy];
  flattenedClusterLeafMembers = v5->_flattenedClusterLeafMembers;
  v5->_flattenedClusterLeafMembers = v40;

  v42 = [v4 hasError];
  if (v42)
  {
LABEL_72:
    v43 = 0;
  }

  else
  {
LABEL_73:
    v43 = v5;
  }

  return v43;
}

- (BMMediaRouteOutputDevice)initWithOutputDeviceID:(id)a3 type:(int)a4 subType:(int)a5 clusterType:(int)a6 flattenedClusterLeafMembers:(id)a7
{
  v13 = a3;
  v14 = a7;
  v17.receiver = self;
  v17.super_class = BMMediaRouteOutputDevice;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_outputDeviceID, a3);
    v15->_type = a4;
    v15->_subType = a5;
    v15->_clusterType = a6;
    objc_storeStrong(&v15->_flattenedClusterLeafMembers, a7);
  }

  return v15;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDeviceID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subType" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clusterType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flattenedClusterLeafMembers" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outputDeviceID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clusterType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"flattenedClusterLeafMembers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_249];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __35__BMMediaRouteOutputDevice_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _flattenedClusterLeafMembersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMMediaRouteOutputDevice alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end