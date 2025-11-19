@interface IDSQUICConnectionIDs
- (id)_getConnectionIDData:(unsigned int)a3;
- (id)_getConnectionIDDispatchData:(unsigned int)a3;
- (id)generateLocalIDs:(id *)a3;
- (unsigned)_generateUniqueQUICConnectionID:(unsigned int)a3 usedLocalConnectionIDs:(id *)a4;
@end

@implementation IDSQUICConnectionIDs

- (unsigned)_generateUniqueQUICConnectionID:(unsigned int)a3 usedLocalConnectionIDs:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*a4 count];
    *buf = 134217984;
    v17 = v7;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "generating a connection ID (%lu already taken)", buf, 0xCu);
  }

  __buf = -1431655766;
  v8 = a3 << 28;
  v9 = -100000;
  do
  {
    arc4random_buf(&__buf, 4uLL);
    __buf = __buf & 0xFFFFFFF | v8 | 0x800000;
    if (__CFADD__(v9++, 1))
    {
      sub_1A7E1ACD0();
    }

    v11 = *a4;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    LOBYTE(v11) = [v11 containsObject:v12];
  }

  while ((v11 & 1) != 0);
  v13 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v17) = __buf;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "generated connection ID %08x", buf, 8u);
  }

  return __buf;
}

- (id)_getConnectionIDData:(unsigned int)a3
{
  v5 = bswap32(a3);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:4];

  return v3;
}

- (id)_getConnectionIDDispatchData:(unsigned int)a3
{
  buffer = bswap32(a3);
  v3 = dispatch_data_create(&buffer, 4uLL, 0, 0);

  return v3;
}

- (id)generateLocalIDs:(id *)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  self->_localAVCConnectionID = [(IDSQUICConnectionIDs *)self _generateUniqueQUICConnectionID:0 usedLocalConnectionIDs:a3];
  self->_localIDSConnectionID = [(IDSQUICConnectionIDs *)self _generateUniqueQUICConnectionID:1 usedLocalConnectionIDs:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localAVCConnectionID];
  v9[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_localIDSConnectionID];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  return v7;
}

@end