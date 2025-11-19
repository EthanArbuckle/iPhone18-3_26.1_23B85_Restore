@interface ICTTZoomController
- (ICTTZoomController)init;
- (id)reallyZoomAttributedString:(id)a3 zoomDirection:(BOOL)a4;
- (id)reallyZoomAttributes:(id)a3 zoomDirection:(BOOL)a4;
- (id)reallyZoomFontInAttributes:(id)a3 zoomDirection:(BOOL)a4;
- (id)unzoomFont:(id)a3;
- (id)zoomFont:(id)a3;
@end

@implementation ICTTZoomController

- (ICTTZoomController)init
{
  v8.receiver = self;
  v8.super_class = ICTTZoomController;
  result = [(ICTTZoomController *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_zoomFactor = _Q0;
  }

  return result;
}

- (id)reallyZoomFontInAttributes:(id)a3 zoomDirection:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 mutableCopy];
  v7 = *MEMORY[0x1E69DB648];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    if (v4)
    {
      [(ICTTZoomController *)self zoomFont:v9];
    }

    else
    {
      [(ICTTZoomController *)self unzoomFont:v9];
    }
    v10 = ;
    [v6 setObject:v10 forKeyedSubscript:v7];
  }

  return v6;
}

- (id)reallyZoomAttributes:(id)a3 zoomDirection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = *MEMORY[0x1E69DB648];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B75E0]];
    v12 = v11;
    if (v11)
    {
      [v11 pointSize];
      v14 = v13;
    }

    else
    {
      v15 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B7600]];
      v16 = v15;
      if (v15)
      {
        v17 = +[ICTTTextController preferredFontForICTTTextStyle:](ICTTTextController, "preferredFontForICTTTextStyle:", [v15 style]);
        v18 = v17;
        if (v17)
        {
          [v17 pointSize];
          v14 = v19;
        }

        else
        {
          v14 = -1.0;
        }
      }

      else
      {
        v14 = -1.0;
      }
    }

    if (v14 > 0.0 || ([(ICTTZoomController *)self zoomFactor], v20 == 1.0))
    {
      if (v14 <= 0.0)
      {
LABEL_22:

        goto LABEL_23;
      }

      if (v4)
      {
        [(ICTTZoomController *)self zoomFactor];
        v14 = v14 * v22;
      }

      v21 = [v10 ic_fontConvertedToSize:v14];
    }

    else
    {
      if (v4)
      {
        [(ICTTZoomController *)self zoomFont:v10];
      }

      else
      {
        [(ICTTZoomController *)self unzoomFont:v10];
      }
      v21 = ;
    }

    v23 = v21;

    [v7 setObject:v23 forKeyedSubscript:v8];
    v10 = v23;
    goto LABEL_22;
  }

LABEL_23:

  return v7;
}

- (id)reallyZoomAttributedString:(id)a3 zoomDirection:(BOOL)a4
{
  v6 = [a3 mutableCopy];
  v7 = [v6 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ICTTZoomController_reallyZoomAttributedString_zoomDirection___block_invoke;
  v11[3] = &unk_1E846D698;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = a4;
  [v8 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v11}];
  v9 = v8;

  return v8;
}

void __63__ICTTZoomController_reallyZoomAttributedString_zoomDirection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) reallyZoomAttributes:v10 zoomDirection:*(a1 + 48)];
    [v8 setAttributes:v9 range:{a3, a4}];
  }
}

- (id)zoomFont:(id)a3
{
  v4 = a3;
  [(ICTTZoomController *)self zoomFactor];
  if (v5 == 1.0)
  {
    v9 = [v4 copy];
  }

  else
  {
    [v4 pointSize];
    v7 = v6;
    [(ICTTZoomController *)self zoomFactor];
    v9 = [v4 ic_fontConvertedToSize:v7 * v8];
  }

  v10 = v9;

  return v10;
}

- (id)unzoomFont:(id)a3
{
  v4 = a3;
  [(ICTTZoomController *)self zoomFactor];
  if (v5 == 1.0)
  {
    v9 = [v4 copy];
  }

  else
  {
    [v4 pointSize];
    v7 = v6;
    [(ICTTZoomController *)self zoomFactor];
    v9 = [v4 ic_fontConvertedToSize:v7 / v8];
  }

  v10 = v9;

  return v10;
}

@end