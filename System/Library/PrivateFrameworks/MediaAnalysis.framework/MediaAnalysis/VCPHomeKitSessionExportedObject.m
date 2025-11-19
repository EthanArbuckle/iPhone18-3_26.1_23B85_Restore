@interface VCPHomeKitSessionExportedObject
- (VCPHomeKitAnalysisSession)weakSession;
- (void)processResults:(id)a3 withReply:(id)a4;
@end

@implementation VCPHomeKitSessionExportedObject

- (void)processResults:(id)a3 withReply:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VCPHomeKitSessionExportedObject *)self weakSession];
  v9 = v8;
  if (v8)
  {
    [v8 processResults:v6 withReply:v7];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No VCPHomeKitAnalysisSession cannot process message"];;
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v12];
    v7[2](v7, v13);
  }
}

- (VCPHomeKitAnalysisSession)weakSession
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);

  return WeakRetained;
}

@end