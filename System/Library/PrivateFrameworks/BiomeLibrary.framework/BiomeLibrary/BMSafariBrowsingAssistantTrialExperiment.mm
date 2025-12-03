@interface BMSafariBrowsingAssistantTrialExperiment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantTrialExperiment)initWithExperiment_namespace:(id)experiment_namespace experiment_id:(id)experiment_id treatment_id:(id)treatment_id deployment_id:(id)deployment_id allocation_status:(int)allocation_status compatibility_version:(id)compatibility_version;
- (BMSafariBrowsingAssistantTrialExperiment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantTrialExperiment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    experiment_namespace = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_namespace];
    experiment_namespace2 = [v5 experiment_namespace];
    v8 = experiment_namespace2;
    if (experiment_namespace == experiment_namespace2)
    {
    }

    else
    {
      experiment_namespace3 = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_namespace];
      experiment_namespace4 = [v5 experiment_namespace];
      v11 = [experiment_namespace3 isEqual:experiment_namespace4];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    experiment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_id];
    experiment_id2 = [v5 experiment_id];
    v15 = experiment_id2;
    if (experiment_id == experiment_id2)
    {
    }

    else
    {
      experiment_id3 = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_id];
      experiment_id4 = [v5 experiment_id];
      v18 = [experiment_id3 isEqual:experiment_id4];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    treatment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self treatment_id];
    treatment_id2 = [v5 treatment_id];
    v21 = treatment_id2;
    if (treatment_id == treatment_id2)
    {
    }

    else
    {
      treatment_id3 = [(BMSafariBrowsingAssistantTrialExperiment *)self treatment_id];
      treatment_id4 = [v5 treatment_id];
      v24 = [treatment_id3 isEqual:treatment_id4];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    if (!-[BMSafariBrowsingAssistantTrialExperiment hasDeployment_id](self, "hasDeployment_id") && ![v5 hasDeployment_id] || -[BMSafariBrowsingAssistantTrialExperiment hasDeployment_id](self, "hasDeployment_id") && objc_msgSend(v5, "hasDeployment_id") && (v25 = -[BMSafariBrowsingAssistantTrialExperiment deployment_id](self, "deployment_id"), v25 == objc_msgSend(v5, "deployment_id")))
    {
      allocation_status = [(BMSafariBrowsingAssistantTrialExperiment *)self allocation_status];
      if (allocation_status == [v5 allocation_status])
      {
        if (!-[BMSafariBrowsingAssistantTrialExperiment hasCompatibility_version](self, "hasCompatibility_version") && ![v5 hasCompatibility_version])
        {
          v12 = 1;
          goto LABEL_27;
        }

        if (-[BMSafariBrowsingAssistantTrialExperiment hasCompatibility_version](self, "hasCompatibility_version") && [v5 hasCompatibility_version])
        {
          compatibility_version = [(BMSafariBrowsingAssistantTrialExperiment *)self compatibility_version];
          v12 = compatibility_version == [v5 compatibility_version];
LABEL_27:

          goto LABEL_28;
        }
      }
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  experiment_namespace = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_namespace];
  experiment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_id];
  treatment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self treatment_id];
  if ([(BMSafariBrowsingAssistantTrialExperiment *)self hasDeployment_id])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSafariBrowsingAssistantTrialExperiment deployment_id](self, "deployment_id")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantTrialExperiment allocation_status](self, "allocation_status")}];
  if ([(BMSafariBrowsingAssistantTrialExperiment *)self hasCompatibility_version])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSafariBrowsingAssistantTrialExperiment compatibility_version](self, "compatibility_version")}];
  }

  else
  {
    v8 = 0;
  }

  v22[0] = @"experiment_namespace";
  null = experiment_namespace;
  if (!experiment_namespace)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = experiment_namespace;
  v23[0] = null;
  v22[1] = @"experiment_id";
  null2 = experiment_id;
  if (!experiment_id)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"treatment_id";
  null3 = treatment_id;
  if (!treatment_id)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"deployment_id";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"allocation_status";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"compatibility_version";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v7)
    {
LABEL_21:
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (v6)
  {
LABEL_22:
    if (treatment_id)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (experiment_id)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!treatment_id)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (experiment_id)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSafariBrowsingAssistantTrialExperiment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v66[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"experiment_namespace"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"experiment_id"];
    v51 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          v22 = 0;
          goto LABEL_45;
        }

        v23 = v8;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v26 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experiment_id"];
        v64 = v27;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v28 = v24;
        v8 = v23;
        v20 = 0;
        v22 = 0;
        *errorCopy = [v28 initWithDomain:v26 code:2 userInfo:v10];
        v11 = v27;
        goto LABEL_44;
      }

      v53 = v9;
    }

    else
    {
      v53 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"treatment_id"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v22 = 0;
          v20 = v53;
          goto LABEL_44;
        }

        v29 = v8;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v32 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"treatment_id"];
        v62 = v52;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v33 = v30;
        v8 = v29;
        v22 = 0;
        *errorCopy2 = [v33 initWithDomain:v32 code:2 userInfo:v12];
        v11 = 0;
LABEL_43:
        v20 = v53;

        self = selfCopy;
LABEL_44:

        v7 = v51;
        goto LABEL_45;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deployment_id"];
    v50 = v8;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v52 = 0;
          v22 = 0;
          goto LABEL_43;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deployment_id"];
        v60 = v15;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v37 = [v34 initWithDomain:v35 code:2 userInfo:v13];
        v52 = 0;
        v22 = 0;
        *errorCopy3 = v37;
        goto LABEL_42;
      }

      v52 = v12;
    }

    else
    {
      v52 = 0;
    }

    v49 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"allocation_status"];
    errorCopy4 = error;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v15 = 0;
            v22 = 0;
            v11 = v49;
            goto LABEL_42;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"allocation_status"];
          v58 = v39;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v38];
          v15 = 0;
          v22 = 0;
          *errorCopy4 = v46;
          goto LABEL_57;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantTreatmentAllocationStatusFromString(v13)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"compatibility_version"];
    if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v39 = 0;
LABEL_40:
      v11 = v49;
      v22 = -[BMSafariBrowsingAssistantTrialExperiment initWithExperiment_namespace:experiment_id:treatment_id:deployment_id:allocation_status:compatibility_version:](selfCopy, "initWithExperiment_namespace:experiment_id:treatment_id:deployment_id:allocation_status:compatibility_version:", v50, v53, v49, v52, [v15 intValue], v39);
      selfCopy = v22;
LABEL_41:

LABEL_42:
      v8 = v50;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
      goto LABEL_40;
    }

    if (errorCopy4)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"compatibility_version"];
      v56 = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *errorCopy4 = [v48 initWithDomain:v47 code:2 userInfo:v43];
    }

    v39 = 0;
    v22 = 0;
LABEL_57:
    v11 = v49;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_46;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy5 = error;
  v19 = *MEMORY[0x1E698F240];
  v65 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experiment_namespace"];
  v66[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v21 = [v17 initWithDomain:v19 code:2 userInfo:v9];
  v8 = 0;
  v22 = 0;
  *errorCopy5 = v21;
LABEL_45:

LABEL_46:
  v40 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantTrialExperiment *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_experiment_namespace)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experiment_id)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatment_id)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDeployment_id)
  {
    deployment_id = self->_deployment_id;
    PBDataWriterWriteInt64Field();
  }

  allocation_status = self->_allocation_status;
  PBDataWriterWriteUint32Field();
  if (self->_hasCompatibility_version)
  {
    compatibility_version = self->_compatibility_version;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMSafariBrowsingAssistantTrialExperiment;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_73;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v44 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v5->_hasDeployment_id = 1;
            while (1)
            {
              v44 = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (v44 & 0x7F) << v25;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_61;
              }
            }

            if ([fromCopy hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_61:
            v5->_deployment_id = v31;
            break;
          case 6:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasCompatibility_version = 1;
            while (1)
            {
              v44 = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 |= (v44 & 0x7F) << v33;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v13 = v34++ >= 9;
              if (v13)
              {
                v39 = 0;
                goto LABEL_69;
              }
            }

            if ([fromCopy hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_69:
            v5->_compatibility_version = v39;
            break;
          case 5:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v44 = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v44 & 0x7F) << v18;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_64;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 3)
            {
LABEL_64:
              LODWORD(v20) = 0;
            }

            v5->_allocation_status = v20;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_72;
            }

            break;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 48;
            break;
          default:
            goto LABEL_45;
        }

        v32 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_72:
    v41 = 0;
  }

  else
  {
LABEL_73:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  experiment_namespace = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_namespace];
  experiment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self experiment_id];
  treatment_id = [(BMSafariBrowsingAssistantTrialExperiment *)self treatment_id];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSafariBrowsingAssistantTrialExperiment deployment_id](self, "deployment_id")}];
  v8 = BMSafariBrowsingAssistantTreatmentAllocationStatusAsString([(BMSafariBrowsingAssistantTrialExperiment *)self allocation_status]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSafariBrowsingAssistantTrialExperiment compatibility_version](self, "compatibility_version")}];
  v10 = [v3 initWithFormat:@"BMSafariBrowsingAssistantTrialExperiment with experiment_namespace: %@, experiment_id: %@, treatment_id: %@, deployment_id: %@, allocation_status: %@, compatibility_version: %@", experiment_namespace, experiment_id, treatment_id, v7, v8, v9];

  return v10;
}

- (BMSafariBrowsingAssistantTrialExperiment)initWithExperiment_namespace:(id)experiment_namespace experiment_id:(id)experiment_id treatment_id:(id)treatment_id deployment_id:(id)deployment_id allocation_status:(int)allocation_status compatibility_version:(id)compatibility_version
{
  experiment_namespaceCopy = experiment_namespace;
  experiment_idCopy = experiment_id;
  treatment_idCopy = treatment_id;
  deployment_idCopy = deployment_id;
  compatibility_versionCopy = compatibility_version;
  v24.receiver = self;
  v24.super_class = BMSafariBrowsingAssistantTrialExperiment;
  v19 = [(BMEventBase *)&v24 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_experiment_namespace, experiment_namespace);
    objc_storeStrong(&v19->_experiment_id, experiment_id);
    objc_storeStrong(&v19->_treatment_id, treatment_id);
    if (deployment_idCopy)
    {
      v19->_hasDeployment_id = 1;
      longLongValue = [deployment_idCopy longLongValue];
    }

    else
    {
      v19->_hasDeployment_id = 0;
      longLongValue = -1;
    }

    v19->_deployment_id = longLongValue;
    v19->_allocation_status = allocation_status;
    if (compatibility_versionCopy)
    {
      v19->_hasCompatibility_version = 1;
      unsignedIntValue = [compatibility_versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasCompatibility_version = 0;
    }

    v19->_compatibility_version = unsignedIntValue;
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experiment_namespace" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experiment_id" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"treatment_id" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deployment_id" number:4 type:3 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"allocation_status" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"compatibility_version" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experiment_namespace" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experiment_id" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"treatment_id" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deployment_id" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:3 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"allocation_status" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"compatibility_version" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSafariBrowsingAssistantTrialExperiment alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end