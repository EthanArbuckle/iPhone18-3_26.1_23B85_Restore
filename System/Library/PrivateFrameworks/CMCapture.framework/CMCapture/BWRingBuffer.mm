@interface BWRingBuffer
- (uint64_t)lastElement;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)appendElement:(void *)result;
- (void)dealloc;
- (void)initWithLength:(uint64_t)a3 dataTypeSize:;
@end

@implementation BWRingBuffer

- (uint64_t)lastElement
{
  if (result)
  {
    v2 = *(result + 20);
    v1 = *(result + 24);
    if ((v2 + v1 - *(result + 16)) % v1 < 1)
    {
      return 0;
    }

    else
    {
      return *(result + 8) + *(result + 32) * ((v1 + v2 - 1) % v1);
    }
  }

  return result;
}

- (void)dealloc
{
  free(self->_ringBuffer);
  v3.receiver = self;
  v3.super_class = BWRingBuffer;
  [(BWRingBuffer *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    outputIndex = a3->var3[0];
  }

  else
  {
    a3->var2 = self;
    if (self)
    {
      outputIndex = self->_outputIndex;
    }

    else
    {
      outputIndex = 0;
    }

    a3->var3[0] = outputIndex;
    a3->var0 = 1;
  }

  v6 = 0;
  if (!self)
  {
    goto LABEL_13;
  }

  while (outputIndex != self->_inputIndex && v6 < a5)
  {
    a4[v6] = self->_ringBuffer + self->_typeSize * outputIndex;
    LODWORD(outputIndex) = (outputIndex + 1) % self->_length;
    while (1)
    {
      ++v6;
      if (self)
      {
        break;
      }

LABEL_13:
      if (!outputIndex || v6 >= a5)
      {
        goto LABEL_16;
      }

      a4[v6] = 0;
    }
  }

LABEL_16:
  a3->var3[0] = outputIndex;
  a3->var1 = a4;
  return v6;
}

- (void)initWithLength:(uint64_t)a3 dataTypeSize:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = BWRingBuffer;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 6) = a2 + 1;
    v5[4] = a3;
    v5[2] = 0;
    v7 = malloc_type_malloc((a2 + 1) * a3, 0x6EC11DEAuLL);
    v6[1] = v7;
    if (!v7)
    {

      return 0;
    }
  }

  return v6;
}

- (void)appendElement:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 5);
    if ((v3 + *(result + 6) - *(result + 4)) % *(result + 6) < *(result + 6) - 1)
    {
      result = memcpy((result[1] + result[4] * v3), a2, result[4]);
      *(v2 + 5) = (*(v2 + 5) + 1) % *(v2 + 6);
    }
  }

  return result;
}

@end