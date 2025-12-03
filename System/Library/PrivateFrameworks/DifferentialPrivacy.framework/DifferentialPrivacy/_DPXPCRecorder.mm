@interface _DPXPCRecorder
- (_DPXPCRecorder)initWithKey:(id)key;
- (void)handleReturn:(BOOL)return forSelector:(id)selector key:(id)key values:(id)values error:(id)error;
- (void)recordBitValues:(id)values;
- (void)recordBitValues:(id)values metadata:(id)metadata;
- (void)recordBitVectors:(id)vectors;
- (void)recordBitVectors:(id)vectors metadata:(id)metadata;
- (void)recordFloatVectors:(id)vectors;
- (void)recordFloatVectors:(id)vectors metadata:(id)metadata;
- (void)recordNumbers:(id)numbers;
- (void)recordNumbers:(id)numbers metadata:(id)metadata;
- (void)recordNumbersVectors:(id)vectors;
- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata;
- (void)recordStrings:(id)strings;
- (void)recordStrings:(id)strings metadata:(id)metadata;
- (void)recordWords:(id)words;
@end

@implementation _DPXPCRecorder

- (_DPXPCRecorder)initWithKey:(id)key
{
  v7.receiver = self;
  v7.super_class = _DPXPCRecorder;
  v3 = [(_DPDataRecorder *)&v7 initWithKey:key];
  if (v3)
  {
    v4 = +[_DPDaemonConnection daemonConnection];
    connection = v3->_connection;
    v3->_connection = v4;
  }

  return v3;
}

- (void)handleReturn:(BOOL)return forSelector:(id)selector key:(id)key values:(id)values error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  selectorCopy = selector;
  keyCopy = key;
  valuesCopy = values;
  errorCopy = error;
  v15 = +[_DPLog framework];
  v16 = v15;
  if (return)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138413058;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = selectorCopy;
      v23 = 2112;
      v24 = keyCopy;
      v25 = 2112;
      v26 = valuesCopy;
      v17 = v20;
      _os_log_debug_impl(&dword_22622D000, v16, OS_LOG_TYPE_DEBUG, "%@ : %@ : forKey: %@ : values: %@", &v19, 0x2Au);
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = 138413058;
    v20 = objc_opt_class();
    v21 = 2112;
    v22 = selectorCopy;
    v23 = 2112;
    v24 = keyCopy;
    v25 = 2112;
    v26 = errorCopy;
    v17 = v20;
    _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@ : %@ : forKey: %@ : error %@", &v19, 0x2Au);
    goto LABEL_7;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(id)numbers
{
  numbersCopy = numbers;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32___DPXPCRecorder_recordNumbers___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = numbersCopy;
  v13 = a2;
  v8 = numbersCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordNumbers:v8 forKey:v9 withReply:v10];
}

- (void)recordNumbers:(id)numbers metadata:(id)metadata
{
  numbersCopy = numbers;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41___DPXPCRecorder_recordNumbers_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = numbersCopy;
  v16 = a2;
  v11 = numbersCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordNumbers:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordNumbersVectors:(id)vectors
{
  vectorsCopy = vectors;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___DPXPCRecorder_recordNumbersVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = vectorsCopy;
  v13 = a2;
  v8 = vectorsCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordNumbersVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___DPXPCRecorder_recordNumbersVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = vectorsCopy;
  v16 = a2;
  v11 = vectorsCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordNumbersVectors:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordBitValues:(id)values
{
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34___DPXPCRecorder_recordBitValues___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = valuesCopy;
  v13 = a2;
  v8 = valuesCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordBitValues:v8 forKey:v9 withReply:v10];
}

- (void)recordBitValues:(id)values metadata:(id)metadata
{
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43___DPXPCRecorder_recordBitValues_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = valuesCopy;
  v16 = a2;
  v11 = valuesCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordBitValues:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordBitVectors:(id)vectors
{
  vectorsCopy = vectors;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35___DPXPCRecorder_recordBitVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = vectorsCopy;
  v13 = a2;
  v8 = vectorsCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordBitVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordBitVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44___DPXPCRecorder_recordBitVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = vectorsCopy;
  v16 = a2;
  v11 = vectorsCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordBitVectors:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordFloatVectors:(id)vectors
{
  vectorsCopy = vectors;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37___DPXPCRecorder_recordFloatVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = vectorsCopy;
  v13 = a2;
  v8 = vectorsCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordFloatVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordFloatVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46___DPXPCRecorder_recordFloatVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = vectorsCopy;
  v16 = a2;
  v11 = vectorsCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordFloatVectors:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordStrings:(id)strings
{
  stringsCopy = strings;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32___DPXPCRecorder_recordStrings___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = stringsCopy;
  v13 = a2;
  v8 = stringsCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordStrings:v8 forKey:v9 withReply:v10];
}

- (void)recordStrings:(id)strings metadata:(id)metadata
{
  stringsCopy = strings;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  metadataCopy = metadata;
  keyName = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41___DPXPCRecorder_recordStrings_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = keyName;
  v15 = stringsCopy;
  v16 = a2;
  v11 = stringsCopy;
  v12 = keyName;
  [(_DPDaemonConnection *)connection recordStrings:v11 metadata:metadataCopy forKey:v12 withReply:v13];
}

- (void)recordWords:(id)words
{
  wordsCopy = words;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  keyName = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30___DPXPCRecorder_recordWords___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = keyName;
  v12 = wordsCopy;
  v13 = a2;
  v8 = wordsCopy;
  v9 = keyName;
  [(_DPDaemonConnection *)connection recordWords:v8 forKey:v9 withReply:v10];
}

@end