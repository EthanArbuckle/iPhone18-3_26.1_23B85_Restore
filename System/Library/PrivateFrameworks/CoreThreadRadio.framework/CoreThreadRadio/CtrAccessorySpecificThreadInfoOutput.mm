@interface CtrAccessorySpecificThreadInfoOutput
- (CtrAccessorySpecificThreadInfoOutput)initWithAccessorySpecificThreadInfoOutput:(int64_t)output threadMeshUnderlyingStatusBitmap:(unint64_t)bitmap threadTXError:(int64_t)error threadTXUnderlyingStatusBitmap:(unint64_t)statusBitmap threadRXUnderlyingStatusBitmap:(unint64_t)underlyingStatusBitmap srpError:(int64_t)srpError srpUnderlyingStatusBitmap:(unint64_t)srpUnderlyingStatusBitmap;
- (CtrAccessorySpecificThreadInfoOutput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CtrAccessorySpecificThreadInfoOutput

- (CtrAccessorySpecificThreadInfoOutput)initWithAccessorySpecificThreadInfoOutput:(int64_t)output threadMeshUnderlyingStatusBitmap:(unint64_t)bitmap threadTXError:(int64_t)error threadTXUnderlyingStatusBitmap:(unint64_t)statusBitmap threadRXUnderlyingStatusBitmap:(unint64_t)underlyingStatusBitmap srpError:(int64_t)srpError srpUnderlyingStatusBitmap:(unint64_t)srpUnderlyingStatusBitmap
{
  v16.receiver = self;
  v16.super_class = CtrAccessorySpecificThreadInfoOutput;
  result = [(CtrAccessorySpecificThreadInfoOutput *)&v16 init];
  if (result)
  {
    result->_threadMeshError = output;
    result->_threadMeshUnderlyingStatusBitmap = bitmap;
    result->_threadTXError = error;
    result->_threadTXUnderlyingStatusBitmap = statusBitmap;
    result->_threadRXUnderlyingStatusBitmap = underlyingStatusBitmap;
    result->_srpError = srpError;
    result->_srpUnderlyingStatusBitmap = srpUnderlyingStatusBitmap;
  }

  return result;
}

- (CtrAccessorySpecificThreadInfoOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CtrAccessorySpecificThreadInfoOutput initWithAccessorySpecificThreadInfoOutput:threadMeshUnderlyingStatusBitmap:threadTXError:threadTXUnderlyingStatusBitmap:threadRXUnderlyingStatusBitmap:srpError:srpUnderlyingStatusBitmap:](self, "initWithAccessorySpecificThreadInfoOutput:threadMeshUnderlyingStatusBitmap:threadTXError:threadTXUnderlyingStatusBitmap:threadRXUnderlyingStatusBitmap:srpError:srpUnderlyingStatusBitmap:", [coderCopy decodeIntegerForKey:@"threadMeshError"] != 0, objc_msgSend(coderCopy, "decodeInt64ForKey:", @"threadMeshStatusBitmap"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"threadTxError") != 0, objc_msgSend(coderCopy, "decodeInt64ForKey:", @"threadTxStatusBitmap"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"threadRxStatusBitmap"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"srpError") != 0, objc_msgSend(coderCopy, "decodeInt64ForKey:", @"srpStatusBitmap"));

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoOutput threadMeshError](self forKey:{"threadMeshError"), @"threadMeshError"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadMeshUnderlyingStatusBitmap](self forKey:{"threadMeshUnderlyingStatusBitmap"), @"threadMeshStatusBitmap"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoOutput threadTXError](self forKey:{"threadTXError"), @"threadTxError"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadTXUnderlyingStatusBitmap](self forKey:{"threadTXUnderlyingStatusBitmap"), @"threadTxStatusBitmap"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoOutput threadRXUnderlyingStatusBitmap](self forKey:{"threadRXUnderlyingStatusBitmap"), @"threadRxStatusBitmap"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoOutput srpError](self forKey:{"srpError"), @"srpError"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoOutput srpUnderlyingStatusBitmap](self forKey:{"srpUnderlyingStatusBitmap"), @"srpStatusBitmap"}];
}

@end