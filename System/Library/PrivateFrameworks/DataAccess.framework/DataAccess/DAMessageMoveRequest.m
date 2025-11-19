@interface DAMessageMoveRequest
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initMoveRequestWithMessage:(id)a3 fromFolder:(id)a4 toFolder:(id)a5;
- (unint64_t)hash;
@end

@implementation DAMessageMoveRequest

- (id)initMoveRequestWithMessage:(id)a3 fromFolder:(id)a4 toFolder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DAMessageMoveRequest;
  v11 = [(DAMessageMoveRequest *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    [(DAMessageMoveRequest *)v11 setMessage:v12];

    v13 = [v9 copy];
    [(DAMessageMoveRequest *)v11 setFromFolder:v13];

    v14 = [v10 copy];
    [(DAMessageMoveRequest *)v11 setToFolder:v14];
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DAMessageMoveRequest *)self message];
  v5 = [(DAMessageMoveRequest *)self fromFolder];
  v6 = [(DAMessageMoveRequest *)self toFolder];
  v7 = [v3 initWithFormat:@"%@\n%@\n%@", v4, v5, v6];

  v8 = [v7 hash];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(DAMessageMoveRequest *)self message];
    v9 = [v7 message];
    if (v8 != v9)
    {
      v3 = [(DAMessageMoveRequest *)self message];
      v4 = [v7 message];
      if (![v3 isEqual:v4])
      {
        v10 = 0;
        goto LABEL_17;
      }
    }

    v11 = [(DAMessageMoveRequest *)self fromFolder];
    v12 = [v7 fromFolder];
    v13 = v12;
    if (v11 == v12)
    {
      v28 = v12;
    }

    else
    {
      v14 = [(DAMessageMoveRequest *)self fromFolder];
      v27 = [v7 fromFolder];
      if (![v14 isEqual:?])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v26 = v14;
      v28 = v13;
    }

    v15 = [(DAMessageMoveRequest *)self toFolder];
    v16 = [v7 toFolder];
    v17 = v16;
    if (v15 == v16)
    {

      v10 = 1;
    }

    else
    {
      [(DAMessageMoveRequest *)self toFolder];
      v18 = v25 = v3;
      [v7 toFolder];
      v24 = v11;
      v19 = v4;
      v20 = v9;
      v22 = v21 = v8;
      v10 = [v18 isEqual:v22];

      v8 = v21;
      v9 = v20;
      v4 = v19;
      v11 = v24;

      v3 = v25;
    }

    v13 = v28;
    v14 = v26;
    if (v11 == v28)
    {
LABEL_16:

      if (v8 == v9)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = DAMessageMoveRequest;
  v4 = [(DAMessageMoveRequest *)&v10 description];
  v5 = [(DAMessageMoveRequest *)self message];
  v6 = [(DAMessageMoveRequest *)self fromFolder];
  v7 = [(DAMessageMoveRequest *)self toFolder];
  v8 = [v3 stringWithFormat:@"%@ message %@, fromFolder %@, toFolder %@", v4, v5, v6, v7];

  return v8;
}

@end