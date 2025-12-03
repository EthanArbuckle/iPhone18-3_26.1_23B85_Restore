@interface HMICameraVideoFrame
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (HMICameraVideoFrame)initWithCoder:(id)coder;
- (HMICameraVideoFrame)initWithJPEGData:(id)data presentationTime:(id *)time frameId:(unint64_t)id fragmentSequenceNumber:(unint64_t)number size:(CGSize)size;
- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer;
- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTime:(id *)time frameId:(unint64_t)id fragmentSequenceNumber:(unint64_t)number;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMICameraVideoFrame

- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(HMICameraVideoFrame *)self initWithPixelBuffer:buffer presentationTime:&v4 frameId:0 fragmentSequenceNumber:0];
}

- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTime:(id *)time frameId:(unint64_t)id fragmentSequenceNumber:(unint64_t)number
{
  v15.receiver = self;
  v15.super_class = HMICameraVideoFrame;
  v10 = [(HMICameraVideoFrame *)&v15 init];
  if (v10)
  {
    v10->_pixelBuffer = CVPixelBufferRetain(buffer);
    var3 = time->var3;
    *&v10->_presentationTime.value = *&time->var0;
    v10->_presentationTime.epoch = var3;
    v10->_frameId = id;
    v10->_fragmentSequenceNumber = number;
    jpegData = v10->_jpegData;
    v10->_jpegData = 0;

    v10->_size.width = HMICVPixelBufferGetSize(buffer);
    v10->_size.height = v13;
  }

  return v10;
}

- (HMICameraVideoFrame)initWithJPEGData:(id)data presentationTime:(id *)time frameId:(unint64_t)id fragmentSequenceNumber:(unint64_t)number size:(CGSize)size
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = HMICameraVideoFrame;
  v15 = [(HMICameraVideoFrame *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_pixelBuffer = 0;
    v17 = *&time->var0;
    v15->_presentationTime.epoch = time->var3;
    *&v15->_presentationTime.value = v17;
    v15->_frameId = id;
    v15->_fragmentSequenceNumber = number;
    objc_storeStrong(&v15->_jpegData, data);
    v16->_size.width = width;
    v16->_size.height = height;
  }

  return v16;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = HMICameraVideoFrame;
  [(HMICameraVideoFrame *)&v3 dealloc];
}

- (NSString)description
{
  [(HMICameraVideoFrame *)self presentationTime];
  v3 = CMTimeCopyDescription(0, &time);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frame %lu @ %@", -[HMICameraVideoFrame frameId](self, "frameId"), v3];

  return v4;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (HMICameraVideoFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMICVF.fi"];
  v6 = [coderCopy decodeIntegerForKey:@"HMICVF.fsn"];
  v16 = 0uLL;
  v17 = 0;
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:@"HMICVF.pt"];
  }

  pixelBufferOut = 0;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMICVF.pb"];
  if (v7)
  {
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v7, 0, &pixelBufferOut);
    v13 = v16;
    v14 = v17;
    v8 = [(HMICameraVideoFrame *)self initWithPixelBuffer:pixelBufferOut presentationTime:&v13 frameId:v5 fragmentSequenceNumber:v6];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMICVF.jd"];
    v10 = [coderCopy decodeIntForKey:@"HMICVF.jsw"];
    v11 = [coderCopy decodeIntForKey:@"HMICVF.jsh"];
    v13 = v16;
    v14 = v17;
    v8 = [(HMICameraVideoFrame *)self initWithJPEGData:v9 presentationTime:&v13 frameId:v5 fragmentSequenceNumber:v6 size:v10, v11];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMICameraVideoFrame frameId](self forKey:{"frameId"), @"HMICVF.fi"}];
  [coderCopy encodeInteger:-[HMICameraVideoFrame fragmentSequenceNumber](self forKey:{"fragmentSequenceNumber"), @"HMICVF.fsn"}];
  [(HMICameraVideoFrame *)self presentationTime];
  [coderCopy encodeCMTime:v11 forKey:@"HMICVF.pt"];
  if ([(HMICameraVideoFrame *)self pixelBuffer])
  {
    v5 = CVPixelBufferGetIOSurface([(HMICameraVideoFrame *)self pixelBuffer]);
    if (!v5)
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"HMICameraVideoFrame pixel buffer is not backed by an IOSurface" userInfo:0];
      objc_exception_throw(v10);
    }

    v6 = v5;
    [coderCopy encodeObject:v5 forKey:@"HMICVF.pb"];
  }

  else
  {
    jpegData = [(HMICameraVideoFrame *)self jpegData];
    [coderCopy encodeObject:jpegData forKey:@"HMICVF.jd"];

    [(HMICameraVideoFrame *)self size];
    [coderCopy encodeInteger:v8 forKey:@"HMICVF.jsw"];
    [(HMICameraVideoFrame *)self size];
    [coderCopy encodeInteger:v9 forKey:@"HMICVF.jsh"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      frameId = [(HMICameraVideoFrame *)self frameId];
      frameId2 = [(HMICameraVideoFrame *)v5 frameId];
      fragmentSequenceNumber = [(HMICameraVideoFrame *)self fragmentSequenceNumber];
      fragmentSequenceNumber2 = [(HMICameraVideoFrame *)v5 fragmentSequenceNumber];
      [(HMICameraVideoFrame *)self size];
      v11 = v10;
      [(HMICameraVideoFrame *)v5 size];
      v13 = v12;
      [(HMICameraVideoFrame *)self size];
      v15 = v14;
      [(HMICameraVideoFrame *)v5 size];
      v17 = 0;
      if (frameId == frameId2 && fragmentSequenceNumber == fragmentSequenceNumber2 && v11 == v13 && v15 == v16)
      {
        jpegData = [(HMICameraVideoFrame *)self jpegData];
        if (jpegData)
        {
        }

        else
        {
          jpegData2 = [(HMICameraVideoFrame *)v5 jpegData];

          if (!jpegData2)
          {
LABEL_13:
            [(HMICameraVideoFrame *)self presentationTime];
            if (v5)
            {
              [(HMICameraVideoFrame *)v5 presentationTime];
            }

            else
            {
              memset(&v24, 0, sizeof(v24));
            }

            v17 = CMTimeCompare(&time1, &v24) == 0;
            goto LABEL_18;
          }
        }

        jpegData3 = [(HMICameraVideoFrame *)self jpegData];
        jpegData4 = [(HMICameraVideoFrame *)v5 jpegData];
        v22 = [jpegData3 isEqualToData:jpegData4];

        if (v22)
        {
          goto LABEL_13;
        }

        v17 = 0;
      }

LABEL_18:

      goto LABEL_19;
    }

    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (unint64_t)hash
{
  frameId = [(HMICameraVideoFrame *)self frameId];
  fragmentSequenceNumber = [(HMICameraVideoFrame *)self fragmentSequenceNumber];
  [(HMICameraVideoFrame *)self presentationTime];
  v5 = HMIHashCMTime(v32);
  [(HMICameraVideoFrame *)self size];
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  *v7.i64 = floor(v6 + 0.5);
  v9 = (v6 - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v30 = vnegq_f64(v10);
  v7.i64[0] = vbslq_s8(v30, v8, v7).i64[0];
  v11 = 2654435761u * *v7.i64;
  v12 = v11 + v9;
  if (v9 <= 0.0)
  {
    v12 = 2654435761u * *v7.i64;
  }

  v13 = v11 - fabs(v9);
  if (v9 < 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [(HMICameraVideoFrame *)self size];
  v17 = -*v15.i64;
  if (*v15.i64 >= 0.0)
  {
    v17 = *v15.i64;
  }

  *v15.i64 = floor(v17 + 0.5);
  v18 = (v17 - *v15.i64) * 1.84467441e19;
  *v16.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.i64[0] = vbslq_s8(v31, v16, v15).i64[0];
  v19 = 2654435761u * *v15.i64;
  v20 = v19 + v18;
  if (v18 <= 0.0)
  {
    v20 = 2654435761u * *v15.i64;
  }

  v21 = v19 - fabs(v18);
  if (v18 < 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (frameId >= 0)
  {
    v23 = frameId;
  }

  else
  {
    v23 = -frameId;
  }

  v24 = 2654435761 * v23;
  if (fragmentSequenceNumber >= 0)
  {
    v25 = fragmentSequenceNumber;
  }

  else
  {
    v25 = -fragmentSequenceNumber;
  }

  v26 = (2654435761 * v25) ^ v24 ^ v5 ^ v14;
  jpegData = [(HMICameraVideoFrame *)self jpegData];
  v28 = v22 ^ [jpegData hash];

  return v26 ^ v28;
}

@end