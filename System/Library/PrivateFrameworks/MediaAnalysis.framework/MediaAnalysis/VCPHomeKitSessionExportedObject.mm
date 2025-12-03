@interface VCPHomeKitSessionExportedObject
- (VCPHomeKitAnalysisSession)weakSession;
- (void)processResults:(id)results withReply:(id)reply;
@end

@implementation VCPHomeKitSessionExportedObject

- (void)processResults:(id)results withReply:(id)reply
{
  v15[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  replyCopy = reply;
  weakSession = [(VCPHomeKitSessionExportedObject *)self weakSession];
  v9 = weakSession;
  if (weakSession)
  {
    [weakSession processResults:resultsCopy withReply:replyCopy];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No VCPHomeKitAnalysisSession cannot process message"];;
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v12];
    replyCopy[2](replyCopy, v13);
  }
}

- (VCPHomeKitAnalysisSession)weakSession
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);

  return WeakRetained;
}

@end