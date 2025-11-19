@interface CalDatabaseClearSuperfluousChanges
@end

@implementation CalDatabaseClearSuperfluousChanges

uint64_t ___CalDatabaseClearSuperfluousChanges_block_invoke(uint64_t a1)
{
  v1 = ___CalDatabaseClearSuperfluousChanges_block_invoke_2(a1, __classesTrackingChanges);
  v2 = _CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryMainDB;
  _CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryMainDB = v1;

  v4 = ___CalDatabaseClearSuperfluousChanges_block_invoke_2(v3, off_1ECDDF370);
  v5 = _CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryAuxDB;
  _CalDatabaseClearSuperfluousChanges___clientSequenceDeleteQueryAuxDB = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

id ___CalDatabaseClearSuperfluousChanges_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM ClientSequence WHERE ClientSequence.sequence_number NOT IN "];
  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v4];
      if (v5)
      {
        [v3 appendString:@"AND ClientSequence.sequence_number NOT IN "];
      }

      [v3 appendFormat:@"(SELECT DISTINCT %@Changes.sequence_number FROM %@Changes WHERE %@Changes.sequence_number IS NOT NULL)", v6, v6, v6];

      v4 = a2[++v5];
    }

    while (v4);
  }

  return v3;
}

@end