@interface _DPXPCRecorder
- (_DPXPCRecorder)initWithKey:(id)a3;
- (void)handleReturn:(BOOL)a3 forSelector:(id)a4 key:(id)a5 values:(id)a6 error:(id)a7;
- (void)recordBitValues:(id)a3;
- (void)recordBitValues:(id)a3 metadata:(id)a4;
- (void)recordBitVectors:(id)a3;
- (void)recordBitVectors:(id)a3 metadata:(id)a4;
- (void)recordFloatVectors:(id)a3;
- (void)recordFloatVectors:(id)a3 metadata:(id)a4;
- (void)recordNumbers:(id)a3;
- (void)recordNumbers:(id)a3 metadata:(id)a4;
- (void)recordNumbersVectors:(id)a3;
- (void)recordNumbersVectors:(id)a3 metadata:(id)a4;
- (void)recordStrings:(id)a3;
- (void)recordStrings:(id)a3 metadata:(id)a4;
- (void)recordWords:(id)a3;
@end

@implementation _DPXPCRecorder

- (_DPXPCRecorder)initWithKey:(id)a3
{
  v7.receiver = self;
  v7.super_class = _DPXPCRecorder;
  v3 = [(_DPDataRecorder *)&v7 initWithKey:a3];
  if (v3)
  {
    v4 = +[_DPDaemonConnection daemonConnection];
    connection = v3->_connection;
    v3->_connection = v4;
  }

  return v3;
}

- (void)handleReturn:(BOOL)a3 forSelector:(id)a4 key:(id)a5 values:(id)a6 error:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = +[_DPLog framework];
  v16 = v15;
  if (a3)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138413058;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
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
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v14;
    v17 = v20;
    _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@ : %@ : forKey: %@ : error %@", &v19, 0x2Au);
    goto LABEL_7;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32___DPXPCRecorder_recordNumbers___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordNumbers:v8 forKey:v9 withReply:v10];
}

- (void)recordNumbers:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41___DPXPCRecorder_recordNumbers_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordNumbers:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordNumbersVectors:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___DPXPCRecorder_recordNumbersVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordNumbersVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordNumbersVectors:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___DPXPCRecorder_recordNumbersVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordNumbersVectors:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordBitValues:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34___DPXPCRecorder_recordBitValues___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordBitValues:v8 forKey:v9 withReply:v10];
}

- (void)recordBitValues:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43___DPXPCRecorder_recordBitValues_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordBitValues:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordBitVectors:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35___DPXPCRecorder_recordBitVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordBitVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordBitVectors:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44___DPXPCRecorder_recordBitVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordBitVectors:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordFloatVectors:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37___DPXPCRecorder_recordFloatVectors___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordFloatVectors:v8 forKey:v9 withReply:v10];
}

- (void)recordFloatVectors:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46___DPXPCRecorder_recordFloatVectors_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordFloatVectors:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordStrings:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32___DPXPCRecorder_recordStrings___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordStrings:v8 forKey:v9 withReply:v10];
}

- (void)recordStrings:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DPXPCRecorder;
  v8 = a4;
  v9 = [(_DPDataRecorder *)&v17 keyName];
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41___DPXPCRecorder_recordStrings_metadata___block_invoke;
  v13[3] = &unk_27858B4C0;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v16 = a2;
  v11 = v7;
  v12 = v9;
  [(_DPDaemonConnection *)connection recordStrings:v11 metadata:v8 forKey:v12 withReply:v13];
}

- (void)recordWords:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPXPCRecorder;
  v6 = [(_DPDataRecorder *)&v14 keyName];
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30___DPXPCRecorder_recordWords___block_invoke;
  v10[3] = &unk_27858B4C0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  v13 = a2;
  v8 = v5;
  v9 = v6;
  [(_DPDaemonConnection *)connection recordWords:v8 forKey:v9 withReply:v10];
}

@end