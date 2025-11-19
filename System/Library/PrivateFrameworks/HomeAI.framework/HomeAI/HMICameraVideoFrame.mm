@interface HMICameraVideoFrame
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (HMICameraVideoFrame)initWithCoder:(id)a3;
- (HMICameraVideoFrame)initWithJPEGData:(id)a3 presentationTime:(id *)a4 frameId:(unint64_t)a5 fragmentSequenceNumber:(unint64_t)a6 size:(CGSize)a7;
- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3;
- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 frameId:(unint64_t)a5 fragmentSequenceNumber:(unint64_t)a6;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMICameraVideoFrame

- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(HMICameraVideoFrame *)self initWithPixelBuffer:a3 presentationTime:&v4 frameId:0 fragmentSequenceNumber:0];
}

- (HMICameraVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 frameId:(unint64_t)a5 fragmentSequenceNumber:(unint64_t)a6
{
  v15.receiver = self;
  v15.super_class = HMICameraVideoFrame;
  v10 = [(HMICameraVideoFrame *)&v15 init];
  if (v10)
  {
    v10->_pixelBuffer = CVPixelBufferRetain(a3);
    var3 = a4->var3;
    *&v10->_presentationTime.value = *&a4->var0;
    v10->_presentationTime.epoch = var3;
    v10->_frameId = a5;
    v10->_fragmentSequenceNumber = a6;
    jpegData = v10->_jpegData;
    v10->_jpegData = 0;

    v10->_size.width = HMICVPixelBufferGetSize(a3);
    v10->_size.height = v13;
  }

  return v10;
}

- (HMICameraVideoFrame)initWithJPEGData:(id)a3 presentationTime:(id *)a4 frameId:(unint64_t)a5 fragmentSequenceNumber:(unint64_t)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v14 = a3;
  v19.receiver = self;
  v19.super_class = HMICameraVideoFrame;
  v15 = [(HMICameraVideoFrame *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_pixelBuffer = 0;
    v17 = *&a4->var0;
    v15->_presentationTime.epoch = a4->var3;
    *&v15->_presentationTime.value = v17;
    v15->_frameId = a5;
    v15->_fragmentSequenceNumber = a6;
    objc_storeStrong(&v15->_jpegData, a3);
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

- (HMICameraVideoFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HMICVF.fi"];
  v6 = [v4 decodeIntegerForKey:@"HMICVF.fsn"];
  v16 = 0uLL;
  v17 = 0;
  if (v4)
  {
    [v4 decodeCMTimeForKey:@"HMICVF.pt"];
  }

  pixelBufferOut = 0;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMICVF.pb"];
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
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMICVF.jd"];
    v10 = [v4 decodeIntForKey:@"HMICVF.jsw"];
    v11 = [v4 decodeIntForKey:@"HMICVF.jsh"];
    v13 = v16;
    v14 = v17;
    v8 = [(HMICameraVideoFrame *)self initWithJPEGData:v9 presentationTime:&v13 frameId:v5 fragmentSequenceNumber:v6 size:v10, v11];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMICameraVideoFrame frameId](self forKey:{"frameId"), @"HMICVF.fi"}];
  [v4 encodeInteger:-[HMICameraVideoFrame fragmentSequenceNumber](self forKey:{"fragmentSequenceNumber"), @"HMICVF.fsn"}];
  [(HMICameraVideoFrame *)self presentationTime];
  [v4 encodeCMTime:v11 forKey:@"HMICVF.pt"];
  if ([(HMICameraVideoFrame *)self pixelBuffer])
  {
    v5 = CVPixelBufferGetIOSurface([(HMICameraVideoFrame *)self pixelBuffer]);
    if (!v5)
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"HMICameraVideoFrame pixel buffer is not backed by an IOSurface" userInfo:0];
      objc_exception_throw(v10);
    }

    v6 = v5;
    [v4 encodeObject:v5 forKey:@"HMICVF.pb"];
  }

  else
  {
    v7 = [(HMICameraVideoFrame *)self jpegData];
    [v4 encodeObject:v7 forKey:@"HMICVF.jd"];

    [(HMICameraVideoFrame *)self size];
    [v4 encodeInteger:v8 forKey:@"HMICVF.jsw"];
    [(HMICameraVideoFrame *)self size];
    [v4 encodeInteger:v9 forKey:@"HMICVF.jsh"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMICameraVideoFrame *)self frameId];
      v7 = [(HMICameraVideoFrame *)v5 frameId];
      v8 = [(HMICameraVideoFrame *)self fragmentSequenceNumber];
      v9 = [(HMICameraVideoFrame *)v5 fragmentSequenceNumber];
      [(HMICameraVideoFrame *)self size];
      v11 = v10;
      [(HMICameraVideoFrame *)v5 size];
      v13 = v12;
      [(HMICameraVideoFrame *)self size];
      v15 = v14;
      [(HMICameraVideoFrame *)v5 size];
      v17 = 0;
      if (v6 == v7 && v8 == v9 && v11 == v13 && v15 == v16)
      {
        v18 = [(HMICameraVideoFrame *)self jpegData];
        if (v18)
        {
        }

        else
        {
          v19 = [(HMICameraVideoFrame *)v5 jpegData];

          if (!v19)
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

        v20 = [(HMICameraVideoFrame *)self jpegData];
        v21 = [(HMICameraVideoFrame *)v5 jpegData];
        v22 = [v20 isEqualToData:v21];

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
  v3 = [(HMICameraVideoFrame *)self frameId];
  v4 = [(HMICameraVideoFrame *)self fragmentSequenceNumber];
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

  if (v3 >= 0)
  {
    v23 = v3;
  }

  else
  {
    v23 = -v3;
  }

  v24 = 2654435761 * v23;
  if (v4 >= 0)
  {
    v25 = v4;
  }

  else
  {
    v25 = -v4;
  }

  v26 = (2654435761 * v25) ^ v24 ^ v5 ^ v14;
  v27 = [(HMICameraVideoFrame *)self jpegData];
  v28 = v22 ^ [v27 hash];

  return v26 ^ v28;
}

@end