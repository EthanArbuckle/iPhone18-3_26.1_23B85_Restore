@interface BMTextUnderstandingPoemEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemEntity)initWithPerson:(id)person topic:(id)topic;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    person = [(BMTextUnderstandingPoemEntity *)self person];
    person2 = [v5 person];
    v8 = person2;
    if (person == person2)
    {
    }

    else
    {
      person3 = [(BMTextUnderstandingPoemEntity *)self person];
      person4 = [v5 person];
      v11 = [person3 isEqual:person4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    topic = [(BMTextUnderstandingPoemEntity *)self topic];
    topic2 = [v5 topic];
    if (topic == topic2)
    {
      v12 = 1;
    }

    else
    {
      topic3 = [(BMTextUnderstandingPoemEntity *)self topic];
      topic4 = [v5 topic];
      v12 = [topic3 isEqual:topic4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  person = [(BMTextUnderstandingPoemEntity *)self person];
  jsonDictionary = [person jsonDictionary];

  topic = [(BMTextUnderstandingPoemEntity *)self topic];
  jsonDictionary2 = [topic jsonDictionary];

  v12[0] = @"person";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"topic";
  v13[0] = null;
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (jsonDictionary2)
  {
    if (jsonDictionary)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMTextUnderstandingPoemEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"person"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v24 = 0;
    v8 = [[BMTextUnderstandingPoemEntityPerson alloc] initWithJSONDictionary:v9 error:&v24];
    v12 = v24;
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

      goto LABEL_26;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"topic"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      self = [(BMTextUnderstandingPoemEntity *)self initWithPerson:v8 topic:v10];
      selfCopy = self;
LABEL_23:

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
      v23 = 0;
      v10 = [[BMTextUnderstandingPoemEntityTopic alloc] initWithJSONDictionary:v13 error:&v23];
      v14 = v23;
      if (!v14)
      {

        goto LABEL_7;
      }

      if (error)
      {
        v14 = v14;
        *error = v14;
      }

LABEL_22:
      selfCopy = 0;
      goto LABEL_23;
    }

    if (error)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E698F240];
      v25 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topic"];
      v26 = v10;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *error = [v22 initWithDomain:v18 code:2 userInfo:v19];

      goto LABEL_22;
    }

LABEL_26:
    selfCopy = 0;
    goto LABEL_24;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_25;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v27 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"person"];
  v28[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v17 = [v15 initWithDomain:v16 code:2 userInfo:v9];
  selfCopy = 0;
  *error = v17;
LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_person)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemEntityPerson *)self->_person writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_topic)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemEntityTopic *)self->_topic writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v21.receiver = self;
  v21.super_class = BMTextUnderstandingPoemEntity;
  v5 = [(BMEventBase *)&v21 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v22) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v22 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v22 & 0x7F) << v7;
        if ((v22 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 2)
      {
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v15 = [[BMTextUnderstandingPoemEntityTopic alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = 32;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v15 = [[BMTextUnderstandingPoemEntityPerson alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = 24;
      }

      v17 = *(&v5->super.super.isa + v16);
      *(&v5->super.super.isa + v16) = v15;

      PBReaderRecallMark();
LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v19 = 0;
  }

  else
  {
LABEL_31:
    v19 = v5;
  }

  return v19;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  person = [(BMTextUnderstandingPoemEntity *)self person];
  topic = [(BMTextUnderstandingPoemEntity *)self topic];
  v6 = [v3 initWithFormat:@"BMTextUnderstandingPoemEntity with person: %@, topic: %@", person, topic];

  return v6;
}

- (BMTextUnderstandingPoemEntity)initWithPerson:(id)person topic:(id)topic
{
  personCopy = person;
  topicCopy = topic;
  v11.receiver = self;
  v11.super_class = BMTextUnderstandingPoemEntity;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_person, person);
    objc_storeStrong(&v9->_topic, topic);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"person" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topic" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"person_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_179_23683];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topic_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_181_23684];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __40__BMTextUnderstandingPoemEntity_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 topic];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMTextUnderstandingPoemEntity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 person];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMTextUnderstandingPoemEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end