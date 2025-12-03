@interface EMFReader
- (int)play:(id)play;
@end

@implementation EMFReader

- (int)play:(id)play
{
  playCopy = play;
  bytes = [playCopy bytes];
  v6 = [playCopy length];
  if (v6)
  {
    v7 = 0;
    v8 = bytes + v6;
    do
    {
      if (bytes + 8 > v8 || (v9 = *(bytes + 4), v9 < 8) || (v10 = bytes + v9, v10 > v8))
      {
        v15 = -7;
        goto LABEL_22;
      }

      v11 = [EMFPlayer play:"play:in_pRecord:" in_pRecord:?];
      v7 |= v11 == -7;
      if (v11 == -7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10 == v8;
      }

      bytes = v10;
    }

    while (!v13);
    if (v7)
    {
      v14 = -7;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_22:
  [(EMFPlayer *)self->m_player done];

  return v15;
}

@end