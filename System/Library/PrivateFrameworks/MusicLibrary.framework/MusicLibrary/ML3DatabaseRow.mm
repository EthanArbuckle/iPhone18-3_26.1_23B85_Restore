@interface ML3DatabaseRow
- (ML3DatabaseRow)init;
- (ML3DatabaseRow)initWithParentResult:(id)result;
- (const)cStringForColumnIndex:(unint64_t)index;
- (const)cStringForColumnName:(id)name;
- (double)doubleForColumnName:(id)name;
- (id)arrayRepresentation;
- (id)dataForColumnIndex:(unint64_t)index;
- (id)dataForColumnName:(id)name;
- (id)dictionaryRepresentation;
- (id)numberForColumnIndex:(unint64_t)index;
- (id)numberForColumnName:(id)name;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)stringForColumnIndex:(unint64_t)index;
- (id)stringForColumnName:(id)name;
- (id)valueForColumnIndex:(unint64_t)index;
- (id)valueForColumnName:(id)name;
- (int)intForColumnName:(id)name;
- (int64_t)int64ForColumnName:(id)name;
- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnIndex:(unint64_t)index;
- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnName:(id)name;
@end

@implementation ML3DatabaseRow

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(ML3DatabaseRow *)self valueForColumnName:subscript];

  return v3;
}

- (id)arrayRepresentation
{
  columnCount = [(ML3DatabaseRow *)self columnCount];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:columnCount];
  if (columnCount)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [(ML3DatabaseRow *)self valueForColumnIndex:v6];
      v9 = v8;
      if (!v8)
      {
        null = [MEMORY[0x277CBEB68] null];
        v9 = null;
      }

      [v5 addObject:v9];
      if (!v8)
      {
      }

      v6 = v7;
    }

    while (columnCount > v7++);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  columnCount = [(ML3DatabaseRow *)self columnCount];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:columnCount];
  columnNameIndexMap = [(ML3DatabaseResult *)self->_parentResult columnNameIndexMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ML3DatabaseRow_dictionaryRepresentation__block_invoke;
  v9[3] = &unk_278765418;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [columnNameIndexMap enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v6;

  return v6;
}

void __42__ML3DatabaseRow_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 40) valueForColumnIndex:{objc_msgSend(v5, "unsignedIntegerValue")}];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  if (!v6)
  {
  }
}

- (id)valueForColumnIndex:(unint64_t)index
{
  v5 = sqlite3_column_type(self->_stmt, index);
  if ((v5 - 1) < 2)
  {
    v6 = [(ML3DatabaseRow *)self numberForColumnIndex:index];
  }

  else if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    if (v5 == 4)
    {
      [(ML3DatabaseRow *)self dataForColumnIndex:index];
    }

    else
    {
      [(ML3DatabaseRow *)self stringForColumnIndex:index];
    }
    v6 = ;
  }

  return v6;
}

- (id)valueForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self valueForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnIndex:(unint64_t)index
{
  indexCopy = index;
  if (bytes)
  {
    *bytes = sqlite3_column_blob(self->_stmt, index);
  }

  if (length)
  {
    *length = sqlite3_column_bytes(self->_stmt, indexCopy);
  }
}

- (void)getBlobBytes:(const void *)bytes outLength:(int *)length forColumnName:(id)name
{
  nameCopy = name;
  [(ML3DatabaseRow *)self getBlobBytes:bytes outLength:length forColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:?]];
}

- (id)numberForColumnIndex:(unint64_t)index
{
  indexCopy = index;
  v5 = sqlite3_column_type(self->_stmt, index);
  if (v5 == 2)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(self->_stmt, indexCopy)}];
  }

  else if (v5 == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(self->_stmt, indexCopy)}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)numberForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self numberForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (id)stringForColumnIndex:(unint64_t)index
{
  indexCopy = index;
  if (sqlite3_column_type(self->_stmt, index) == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{sqlite3_column_text(self->_stmt, indexCopy)}];
  }

  return v5;
}

- (id)stringForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self stringForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (const)cStringForColumnIndex:(unint64_t)index
{
  indexCopy = index;
  if (sqlite3_column_type(self->_stmt, index) == 5)
  {
    return 0;
  }

  stmt = self->_stmt;

  return sqlite3_column_text(stmt, indexCopy);
}

- (const)cStringForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self cStringForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (int64_t)int64ForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self int64ForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (int)intForColumnName:(id)name
{
  nameCopy = name;
  LODWORD(self) = [(ML3DatabaseRow *)self intForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return self;
}

- (double)doubleForColumnName:(id)name
{
  nameCopy = name;
  [(ML3DatabaseRow *)self doubleForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];
  v6 = v5;

  return v6;
}

- (id)dataForColumnIndex:(unint64_t)index
{
  indexCopy = index;
  if (sqlite3_column_type(self->_stmt, index) == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_blob(self->_stmt, indexCopy);
    v7 = sqlite3_column_bytes(self->_stmt, indexCopy);
    v8 = malloc_type_malloc(v7, 0xD99209FDuLL);
    memcpy(v8, v6, v7);
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v8 length:v7];
  }

  return v5;
}

- (id)dataForColumnName:(id)name
{
  nameCopy = name;
  v5 = [(ML3DatabaseRow *)self dataForColumnIndex:[(ML3DatabaseResult *)self->_parentResult indexForColumnName:nameCopy]];

  return v5;
}

- (ML3DatabaseRow)initWithParentResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = ML3DatabaseRow;
  v6 = [(ML3DatabaseRow *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentResult, result);
    _statement = [(ML3DatabaseResult *)v7->_parentResult _statement];
    v7->_stmt = [_statement sqliteStatement];
  }

  return v7;
}

- (ML3DatabaseRow)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"-[%@ init] is unsupported. Use -[%@ initWithStatement:] instead.", v4, v4}];

  return 0;
}

@end