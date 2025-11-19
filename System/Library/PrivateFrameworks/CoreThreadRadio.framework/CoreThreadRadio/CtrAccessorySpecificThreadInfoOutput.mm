@interface CtrAccessorySpecificThreadInfoOutput
- (CtrAccessorySpecificThreadInfoOutput)initWithAccessorySpecificThreadInfoOutput:(int64_t)a3 threadMeshUnderlyingStatusBitmap:(unint64_t)a4 threadTXError:(int64_t)a5 threadTXUnderlyingStatusBitmap:(unint64_t)a6 threadRXUnderlyingStatusBitmap:(unint64_t)a7 srpError:(int64_t)a8 srpUnderlyingStatusBitmap:(unint64_t)a9;
- (CtrAccessorySpecificThreadInfoOutput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CtrAccessorySpecificThreadInfoOutput

- (CtrAccessorySpecificThreadInfoOutput)initWithAccessorySpecificThreadInfoOutput:(int64_t)a3 threadMeshUnderlyingStatusBitmap:(unint64_t)a4 threadTXError:(int64_t)a5 threadTXUnderlyingStatusBitmap:(unint64_t)a6 threadRXUnderlyingStatusBitmap:(unint64_t)a7 srpError:(int64_t)a8 srpUnderlyingStatusBitmap:(unint64_t)a9
{
  v16.receiver = self;
  v16.super_class = CtrAccessorySpecificThreadInfoOutput;
  result = [(CtrAccessorySpecificThreadInfoOutput *)&v16 init];
  if (result)
  {
    result->_threadMeshError = a3;
    result->_threadMeshUnderlyingStatusBitmap = a4;
    result->_threadTXError = a5;
    result->_threadTXUnderlyingStatusBitmap = a6;
    result->_threadRXUnderlyingStatusBitmap = a7;
    result->_srpError = a8;
    result->_srpUnderlyingStatusBitmap = a9;
  }

  return result;
}

- (CtrAccessorySpecificThreadInfoOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CtrAccessorySpecificThreadInfoOutput initWithAccessorySpecificThreadInfoOutput:threadMeshUnderlyingStatusBitmap:threadTXError:threadTXUnderlyingStatusBitmap:threadRXUnderlyingStatusBitmap:srpError:srpUnderlyingStatusBitmap:](self, "initWithAccessorySpecificThreadInfoOutput:threadMeshUnderlyingStatusBitmap:threadTXError:threadTXUnderlyingStatusBitmap:threadRXUnderlyingStatusBitmap:srpError:srpUnderlyingStatusBitmap:", [v4 decodeIntegerForKey:@"threadMeshError"] != 0, objc_msgSend(v4, "decodeInt64ForKey:", @"threadMeshStatusBitmap"), objc_msgSend(v4, "decodeIntegerForKey:", @"threadTxError") != 0, objc_msgSend(v4, "decodeInt64ForKey:", @"threadTxStatusBitmap"), objc_msgSend(v4, "decodeInt64ForKey:", @"threadRxStatusBitmap"), objc_msgSend(v4, "decodeIntegerForKey:", @"srpError") != 0, objc_msgSend(v4, "decodeInt64ForKey:", @"srpStatusBitmap"));

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CtrAccessorySpecificThreadInfoOutput threadMeshError](self forKey:{"threadMeshError"), @"threadMeshError"}];
  [v4 encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadMeshUnderlyingStatusBitmap](self forKey:{"threadMeshUnderlyingStatusBitmap"), @"threadMeshStatusBitmap"}];
  [v4 encodeInteger:-[CtrAccessorySpecificThreadInfoOutput threadTXError](self forKey:{"threadTXError"), @"threadTxError"}];
  [v4 encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadTXUnderlyingStatusBitmap](self forKey:{"threadTXUnderlyingStatusBitmap"), @"threadTxStatusBitmap"}];
  [v4 encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadRXUnderlyingStatusBitmap](self forKey:{"threadRXUnderlyingStatusBitmap"), @"threadRxStatusBitmap"}];
  [v4 encodeInteger:-[CtrAccessorySpecificThreadInfoOutput srpError](self forKey:{"srpError"), @"srpError"}];
  [v4 encodeInt64:-[CtrAccessorySpecificThreadInfoOutput srpUnderlyingStatusBitmap](self forKey:{"srpUnderlyingStatusBitmap"), @"srpStatusBitmap"}];
}

@end