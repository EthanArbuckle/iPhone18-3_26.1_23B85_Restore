@interface OUKeyframeMeta
- (OUKeyframeMeta)init;
- (__n128)cameraPose;
- (__n128)setCameraPose:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OUKeyframeMeta

- (OUKeyframeMeta)init
{
  v3.receiver = self;
  v3.super_class = OUKeyframeMeta;
  result = [(OUKeyframeMeta *)&v3 init];
  if (result)
  {
    result->_size = 0;
    result->_timestamp = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  objc_storeStrong((v4 + 8), self->_identifier);
  v5 = *&self[1].super.isa;
  v6 = *&self[1]._size;
  v7 = *&self[2]._size;
  *(v4 + 64) = *&self[2].super.isa;
  *(v4 + 80) = v7;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 16) = self->_size;
  *(v4 + 24) = self->_timestamp;
  return v4;
}

- (__n128)cameraPose
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  return result;
}

- (__n128)setCameraPose:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

@end