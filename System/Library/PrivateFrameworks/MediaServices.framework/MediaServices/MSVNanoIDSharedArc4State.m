@interface MSVNanoIDSharedArc4State
@end

@implementation MSVNanoIDSharedArc4State

void ___MSVNanoIDSharedArc4State_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
  _MSVNanoIDSharedArc4State__state = v0;
  if (v0)
  {
    v1 = v0;
    *v0 = 0;
    v2 = malloc_type_malloc(0x100uLL, 0xBDE05430uLL);
    v3 = 0;
    v1[1] = v2;
    do
    {
      *(v1[1] + v3) = v3;
      ++v3;
    }

    while (v3 != 256);
  }

  if (SecRandomCopyBytes(0, 0x10uLL, bytes))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"struct MSVArc4State *_MSVNanoIDSharedArc4State(void)_block_invoke"];
    [v15 handleFailureInFunction:v16 file:@"MSVNanoID.m" lineNumber:43 description:@"Unable to obtain system random bytes."];
  }

  v4 = 0;
  v5 = 0;
  v6 = _MSVNanoIDSharedArc4State__state;
  v7 = *(_MSVNanoIDSharedArc4State__state + 8);
  do
  {
    v8 = *(v7 + v4);
    v5 += v8 + bytes[v4 & 0xF];
    *(v7 + v4) = *(v7 + v5);
    *(v7 + v5) = v8;
    ++v4;
  }

  while (v4 != 255);
  v9 = *(v6 + 8);
  v10 = 768;
  LODWORD(v11) = *v6;
  v12 = *(v6 + 4);
  do
  {
    v11 = (v11 + 1);
    v13 = *(v9 + v11);
    LOBYTE(v12) = v13 + v12;
    *(v9 + v11) = *(v9 + v12);
    *(v9 + v12) = v13;
    --v10;
  }

  while (v10);
  *v6 = v11;
  *(v6 + 4) = v12;
  v14 = *MEMORY[0x1E69E9840];
}

@end