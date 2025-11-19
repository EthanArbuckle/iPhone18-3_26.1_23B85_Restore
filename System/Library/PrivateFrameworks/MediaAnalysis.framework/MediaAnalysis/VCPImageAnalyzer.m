@interface VCPImageAnalyzer
- (id).cxx_construct;
- (int)analyzePixelBufferInTiles:(__CVBuffer *)a3 results:(id)a4 cancel:(id)a5;
- (int)calculateTextureness:(float *)a3 height:(int)a4 width:(int)a5 sdof:(BOOL)a6 result:(char *)a7;
@end

@implementation VCPImageAnalyzer

- (int)analyzePixelBufferInTiles:(__CVBuffer *)a3 results:(id)a4 cancel:(id)a5
{
  v37 = a4;
  v38 = a5;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  cf = 0;
  v10 = -50;
  if (Width)
  {
    v11 = Height;
    if (Height)
    {
      if (Width <= Height)
      {
        v12 = Height;
      }

      else
      {
        v12 = Width;
      }

      if (Width >= Height)
      {
        v13 = Height;
      }

      else
      {
        v13 = Width;
      }

      v14 = v12 / v13;
      if (v14 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v14;
      }

      if (v14 < 2)
      {
        v10 = [(VCPImageAnalyzer *)self processTile:a3 results:v37 cancel:v38];
      }

      else
      {
        v16 = 0;
        v17 = Height;
        v18 = Width;
        v36 = Height;
        while (1)
        {
          if (v38[2]())
          {
            v10 = -128;
            goto LABEL_53;
          }

          v19 = (1.0 / v15) * v16;
          v20 = 1.0 - v19;
          if ((1.0 - v19) >= (1.5 / v15))
          {
            v20 = 1.5 / v15;
          }

          v21 = Width > v11 ? v11 : (v20 * v17) & 0xFFFFFFFE;
          v22 = Width > v11 ? (v20 * v18) & 0xFFFFFFFE : Width;
          v23 = Width > v11 ? v19 : 0.0;
          v24 = Width > v11 ? 0.0 : v19;
          v25 = Width > v11 ? v20 : 1.0;
          v26 = Width > v11 ? 1.0 : v20;
          v27 = [MEMORY[0x1E695DF70] array];
          v28 = v27;
          v29 = v18;
          v30 = (v19 * v18);
          v31 = v17;
          v32 = (v19 * v17);
          v33 = Width <= v11 ? 0.0 : v30;
          v34 = Width <= v11 ? v32 : 0.0;
          if (!v27)
          {
            break;
          }

          v40.origin.x = v23;
          v40.origin.y = v24;
          v40.size.width = v25;
          v40.size.height = v26;
          v10 = Scaler::ScaleCropped(&self->_scaler, v40, a3, &cf, v22, v21, 875704422);
          if (v10 || (v10 = [(VCPImageAnalyzer *)self processTile:cf results:v28 cancel:v38]) != 0 || (v10 = [(VCPImageAnalyzer *)self aggregateTileResults:v28 tileRect:Width > v11 imageSize:v37 landscape:v33 results:v34, v22, v21, Width, v36]) != 0)
          {

            goto LABEL_53;
          }

          v17 = v31;
          v18 = v29;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v15 == ++v16)
          {
            v10 = 0;
            goto LABEL_53;
          }
        }

        v10 = -108;
      }

LABEL_53:
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v10;
}

- (int)calculateTextureness:(float *)a3 height:(int)a4 width:(int)a5 sdof:(BOOL)a6 result:(char *)a7
{
  v68 = *MEMORY[0x1E69E9840];
  bzero(v67, 0x320uLL);
  if (a5 * a4 < 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 4 * (a5 * a4);
  }

  v13 = operator new[](v12, MEMORY[0x1E69E5398]);
  v14 = v13;
  if (v13)
  {
    bzero(v13, v12);
  }

  v15 = operator new[](v12, MEMORY[0x1E69E5398]);
  v16 = v15;
  if (v15)
  {
    bzero(v15, v12);
  }

  v17 = operator new[](v12, MEMORY[0x1E69E5398]);
  v18 = v17;
  if (!v17)
  {
    v19 = -108;
    goto LABEL_50;
  }

  bzero(v17, v12);
  v19 = -108;
  if (v14 && v16)
  {
    if (a4 <= 2)
    {
      bzero(a7, a5 * a4);
      if (!a6)
      {
LABEL_49:
        v19 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v20 = 0;
      v21 = 4 * a5;
      v22 = &a3[2 * a5 + 1];
      v23 = &v14[v21 + 4];
      v24 = &v18[v21 + 4];
      v25 = &v16[v21 + 4];
      v26 = v14 + 4;
      v27 = 1;
      v28 = v16;
      v29 = v18;
      v30 = &a3[v21 / 4];
      do
      {
        if (a5 >= 3)
        {
          v31 = 0;
          v32 = v21 + v21 * v20;
          v33 = *&v16[v32];
          v34 = *&v18[v32];
          v35 = *&v14[v32];
          do
          {
            v36 = v30[v31 / 4 + 2] - v30[v31 / 4];
            v37 = v22[v31 / 4] - a3[v31 / 4 + 1];
            v38 = *&v29[v31];
            v39 = v34 + *&v29[v31 + 4];
            v35 = ((v35 + *&v26[v31]) - *&v26[v31 - 4]) + (v36 * v36);
            *&v23[v31] = v35;
            v34 = (v39 - v38) + (v36 * v37);
            *&v24[v31] = v34;
            v33 = ((v33 + *&v28[v31 + 4]) - *&v28[v31]) + (v37 * v37);
            *&v25[v31] = v33;
            v31 += 4;
          }

          while (4 * (a5 - 1) - 4 != v31);
        }

        ++v27;
        ++v20;
        v22 = (v22 + v21);
        v23 += v21;
        v24 += v21;
        v25 += v21;
        v26 += v21;
        v29 += v21;
        v28 += v21;
        v30 = (v30 + v21);
        a3 = (a3 + v21);
      }

      while (v27 != a4 - 1);
      bzero(a7, a5 * a4);
      if (a4 >= 31)
      {
        v40 = 0;
        v41 = 116 * a5 - 4;
        v42 = &v16[v41];
        v43 = 4 * a5;
        v44 = &v18[v41];
        v45 = &v14[116 - v43];
        v46 = &v18[116 - v43];
        v47 = &v16[116 - v43];
        v48 = &v14[v41];
        v49 = a7;
        while (a5 < 31)
        {
LABEL_32:
          ++v40;
          v49 += a5;
          v42 = (v42 + v43);
          v44 = (v44 + v43);
          v45 = (v45 + v43);
          v46 = (v46 + v43);
          v47 = (v47 + v43);
          v48 += v43;
          if (v40 == a4 - 30)
          {
            goto LABEL_33;
          }
        }

        v50 = 0;
        v51 = 0;
        while (1)
        {
          if (v51 | v40)
          {
            v52 = *&v48[v50 * 4 + 120];
            if (!(v50 * 4))
            {
              v53 = v52 - *v45;
              v54 = v44[30] - *v46;
              v56 = v42[30];
              v57 = *v47;
LABEL_28:
              v55 = v56 - v57;
              goto LABEL_29;
            }

            if (!v40)
            {
              v53 = v52 - *&v48[v50 * 4];
              v54 = v44[v50 + 30] - v44[v50];
              v56 = v42[v50 + 30];
              v57 = v42[v50];
              goto LABEL_28;
            }

            v53 = ((v52 - v45[v50]) - *&v48[v50 * 4]) + v45[v50 - 30];
            v54 = ((v44[v50 + 30] - v46[v50]) - v44[v50]) + v46[v50 - 30];
            v55 = ((v42[v50 + 30] - v47[v50]) - v42[v50]) + v47[v50 - 30];
          }

          else
          {
            v53 = *&v48[v50 * 4 + 120];
            v54 = v44[v50 + 30];
            v55 = v42[v50 + 30];
          }

LABEL_29:
          v58 = (((((((v53 / 900.0) + (v55 / 900.0)) - sqrtf(((v54 / 900.0) * ((v54 / 900.0) * 4.0)) + (((v53 / 900.0) - (v55 / 900.0)) * ((v53 / 900.0) - (v55 / 900.0))))) * 0.5) + -0.001) * 100000.0) + 1.0);
          if (v58 >= 199)
          {
            v58 = 199;
          }

          v59 = v58 & ~(v58 >> 31);
          ++v67[v59];
          v49[v51++] = v59;
          if (a5 - 30 == ++v50)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      if (!a6)
      {
        goto LABEL_49;
      }
    }

    v60 = 0;
    v61 = 200;
    while (1)
    {
      v62 = v61 - 1;
      v60 += v67[v61 - 1];
      if (v60 > ((a5 * a4) * 0.1))
      {
        break;
      }

      --v61;
      if (v62 <= 1)
      {
        goto LABEL_49;
      }
    }

    v19 = 0;
    if (v61 != 2 && a4 >= 1)
    {
      v63 = 0;
      do
      {
        v64 = a5;
        v65 = a7;
        if (a5 >= 1)
        {
          do
          {
            if (v62 > *v65)
            {
              *v65 = 0;
            }

            ++v65;
            --v64;
          }

          while (v64);
        }

        ++v63;
        a7 += a5;
      }

      while (v63 != a4);
      goto LABEL_49;
    }
  }

LABEL_50:
  if (v14)
  {
    MEMORY[0x1CCA95C10](v14, 0x1000C8052888210);
  }

  if (v16)
  {
    MEMORY[0x1CCA95C10](v16, 0x1000C8052888210);
  }

  if (v18)
  {
    MEMORY[0x1CCA95C10](v18, 0x1000C8052888210);
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0;
  return self;
}

@end