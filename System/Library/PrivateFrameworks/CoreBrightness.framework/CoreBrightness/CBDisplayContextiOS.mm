@interface CBDisplayContextiOS
- (CBDisplayContextiOS)initWithQueue:(id)a3 andBrtCtl:(id)a4 andConfig:(id)a5 andTwilight:(id)a6 andAmmolite:(id)a7 andGCP:(id)a8;
- (void)dealloc;
@end

@implementation CBDisplayContextiOS

- (CBDisplayContextiOS)initWithQueue:(id)a3 andBrtCtl:(id)a4 andConfig:(id)a5 andTwilight:(id)a6 andAmmolite:(id)a7 andGCP:(id)a8
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15.receiver = self;
  v15.super_class = CBDisplayContextiOS;
  v23 = [(CBDisplayContextiOS *)&v15 init];
  v8 = MEMORY[0x1E69E5928](v21);
  v23->_displayQueue = v8;
  v9 = MEMORY[0x1E69E5928](v20);
  v23->_brtCtl = v9;
  v10 = MEMORY[0x1E69E5928](v19);
  v23->_configuration = v10;
  v11 = MEMORY[0x1E69E5928](v18);
  v23->_twilight = v11;
  v12 = MEMORY[0x1E69E5928](v17);
  v23->_ammolite = v12;
  v13 = MEMORY[0x1E69E5928](v16);
  v23->_gcp = v13;
  return v23;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_displayQueue);
  MEMORY[0x1E69E5920](v5->_brtCtl);
  MEMORY[0x1E69E5920](v5->_configuration);
  MEMORY[0x1E69E5920](v5->_twilight);
  MEMORY[0x1E69E5920](v5->_ammolite);
  *&v2 = MEMORY[0x1E69E5920](v5->_gcp).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBDisplayContextiOS;
  [(CBDisplayContextiOS *)&v3 dealloc];
}

@end