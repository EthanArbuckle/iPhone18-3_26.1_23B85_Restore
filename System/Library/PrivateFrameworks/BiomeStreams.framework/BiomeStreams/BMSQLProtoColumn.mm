@interface BMSQLProtoColumn
- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5;
- (id)description;
@end

@implementation BMSQLProtoColumn

id __92__BMSQLProtoColumn_initWithName_dataType_requestOnly_fieldPath_protoDataType_convertedType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 count];
  v8 = [v6 eventBodyData];

  if (v7 == 1)
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v10 = +[BMSQLProtoColumn extractValueFromProtoData:fieldNumber:type:error:](BMSQLProtoColumn, "extractValueFromProtoData:fieldNumber:type:error:", v8, [v9 intValue], *(a1 + 40), a3);
  }

  else
  {
    v10 = [BMSQLProtoColumn extractValueFromProtoData:v8 fieldPath:*(a1 + 32) type:*(a1 + 40) error:a3];
  }

  v11 = [BMEventBase convertValue:v10 toType:*(a1 + 48)];

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(BMSQLColumn *)self name];
  v6 = BMSQLDataTypeToString([(BMSQLColumn *)self dataType]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSQLColumn requestOnly](self, "requestOnly")}];
  fieldPath = self->_fieldPath;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_protoDataType];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_convertedType];
  v11 = [v3 initWithFormat:@"<%@ %p> name: %@, datatype: %@, request only: %@, fieldPath: %@, protoDataType: %@, convertedType: %@", v4, self, v5, v6, v7, fieldPath, v9, v10];

  return v11;
}

- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(BMSQLProtoColumn *)self fieldPath];
  v10 = [v9 count];

  v11 = [v8 eventBodyData];

  v12 = [(BMSQLProtoColumn *)self fieldPath];
  v13 = v12;
  if (v10 == 1)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    +[BMPoirotSchematizerShim setSQLiteValueIn:withFieldNumber:typeRawValue:convertedTypeRawValue:sqliteContext:error:](_TtC12BiomeStreams23BMPoirotSchematizerShim, "setSQLiteValueIn:withFieldNumber:typeRawValue:convertedTypeRawValue:sqliteContext:error:", v11, [v14 intValue], -[BMSQLProtoColumn protoDataType](self, "protoDataType"), -[BMSQLProtoColumn convertedType](self, "convertedType"), a4, a5);
  }

  else
  {
    [_TtC12BiomeStreams23BMPoirotSchematizerShim setSQLiteValueIn:v11 withFieldPath:v12 typeRawValue:[(BMSQLProtoColumn *)self protoDataType] convertedTypeRawValue:[(BMSQLProtoColumn *)self convertedType] sqliteContext:a4 error:a5];
  }

  return *a5 == 0;
}

@end