@interface _MPCPlaybackSessionArchive
- (BOOL)isEqual:(id)equal;
- (BOOL)saveWithError:(id *)error;
- (BOOL)writeWithError:(id *)error;
- (MPNowPlayingContentItem)contentItem;
- (UIImage)artworkImage;
- (_MPCPlaybackSessionArchive)initWithURL:(id)l;
- (_MPCPlaybackSessionArchive)initWithURL:(id)l identifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation _MPCPlaybackSessionArchive

- (UIImage)artworkImage
{
  artworkImage = self->_artworkImage;
  if (!artworkImage)
  {
    packageURL = [(MSVSegmentedCodingPackage *)self packageURL];
    v5 = [packageURL URLByAppendingPathComponent:@"artwork" isDirectory:0];

    v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
    path = [v5 path];
    v8 = [v6 initWithContentsOfFile:path];
    v9 = self->_artworkImage;
    self->_artworkImage = v8;

    artworkImage = self->_artworkImage;
  }

  return artworkImage;
}

- (MPNowPlayingContentItem)contentItem
{
  contentItem = self->_contentItem;
  if (!contentItem)
  {
    packageURL = [(MSVSegmentedCodingPackage *)self packageURL];
    v5 = [packageURL URLByAppendingPathComponent:@"contentItem.protobuf.gz" isDirectory:0];

    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5];
    v7 = MSVGzipDecompressData();

    v8 = [objc_alloc(MEMORY[0x1E6970830]) initWithExternalRepresentation:v7];
    v9 = self->_contentItem;
    self->_contentItem = v8;

    contentItem = self->_contentItem;
  }

  return contentItem;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(_MPCPlaybackSessionArchive *)self identifier];
      identifier2 = [(_MPCPlaybackSessionArchive *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(_MPCPlaybackSessionArchive *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)writeWithError:(id *)error
{
  v232[0] = *MEMORY[0x1E69E9840];
  v212.receiver = self;
  v212.super_class = _MPCPlaybackSessionArchive;
  if ([(MSVSegmentedCodingPackage *)&v212 writeWithError:?])
  {
    packageURL = [(MSVSegmentedCodingPackage *)self packageURL];
    v6 = [packageURL URLByAppendingPathComponent:@"contentItem.protobuf.gz" isDirectory:0];

    if (self->_contentItem)
    {
      infoDictionary = [(MSVSegmentedCodingPackage *)self infoDictionary];
      v8 = [infoDictionary objectForKeyedSubscript:@"contentItem"];

      identifier = [(MPNowPlayingContentItem *)self->_contentItem identifier];
      v10 = [v8 objectForKeyedSubscript:@"identifier"];
      v11 = [identifier isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        if (!v8)
        {
          v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        }

        createExternalRepresentation = [(MPNowPlayingContentItem *)self->_contentItem createExternalRepresentation];
        v13 = MSVGzipCompressData();

        if (!v13)
        {
          v13 = 0;
          if (error)
          {
            v16 = 0;
            *error = 0;
LABEL_216:

            return v16;
          }

          goto LABEL_215;
        }

        if (![v13 writeToURL:v6 options:0 error:error])
        {
          goto LABEL_215;
        }

        identifier2 = [(MPNowPlayingContentItem *)self->_contentItem identifier];
        [v8 setObject:identifier2 forKeyedSubscript:@"identifier"];

        [v8 setObject:&unk_1F4599568 forKeyedSubscript:@"compressionAlgorithm"];
        infoDictionary2 = [(MSVSegmentedCodingPackage *)self infoDictionary];
        [infoDictionary2 setObject:v8 forKeyedSubscript:@"contentItem"];

        [(MSVSegmentedCodingPackage *)self setNeedsInfoDictionaryUpdate];
      }
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtURL:v6 error:0];

      infoDictionary3 = [(MSVSegmentedCodingPackage *)self infoDictionary];
      v19 = [infoDictionary3 objectForKeyedSubscript:@"contentItem"];

      if (v19)
      {
        infoDictionary4 = [(MSVSegmentedCodingPackage *)self infoDictionary];
        [infoDictionary4 setObject:0 forKeyedSubscript:@"contentItem"];

        [(MSVSegmentedCodingPackage *)self setNeedsInfoDictionaryUpdate];
      }
    }

    packageURL2 = [(MSVSegmentedCodingPackage *)self packageURL];
    v8 = [packageURL2 URLByAppendingPathComponent:@"artwork" isDirectory:0];

    infoDictionary5 = [(MSVSegmentedCodingPackage *)self infoDictionary];
    v13 = [infoDictionary5 objectForKeyedSubscript:@"artworkHash"];

    if (!self->_artworkImage)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v8 error:0];

      infoDictionary6 = [(MSVSegmentedCodingPackage *)self infoDictionary];
      v34 = [infoDictionary6 objectForKeyedSubscript:@"artworkHash"];

      if (v34)
      {
        infoDictionary7 = [(MSVSegmentedCodingPackage *)self infoDictionary];
        [infoDictionary7 setObject:0 forKeyedSubscript:@"artworkHash"];

        [(MSVSegmentedCodingPackage *)self setNeedsInfoDictionaryUpdate];
      }

      goto LABEL_213;
    }

    v210 = v6;
    v211 = v13;
    v23 = MEMORY[0x1C6954960](*MEMORY[0x1E69B1368]);
    v24 = *MEMORY[0x1E69B1360];
    v25 = v23;
    v227 = 0u;
    v226 = 0u;
    v225 = 0u;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = 0u;
    v213 = xmmword_1C6045200;
    v214 = vaddq_s64(vdupq_n_s64(v24), xmmword_1C6045210);
    v26 = &v215;
    v215 = v24;
    v216 = v24 + 0x61C8864E7A143579;
    v27 = &v217;
    v217 = 0u;
    v218 = 0u;
    v219 = 0;
    v28 = v25;
    bytes = [v28 bytes];
    v30 = [v28 length];
    v31 = v30;
    if (v213 > 3000)
    {
      if (v213 > 4000)
      {
        switch(v213)
        {
          case 0xFA1:
            CC_SHA1_Update((&v213 + 8), bytes, v30);
            break;
          case 0x10A0:
            CC_SHA256_Update((&v213 + 8), bytes, v30);
            break;
          case 0x11A0:
            CC_SHA512_Update((&v213 + 8), bytes, v30);
            break;
        }

        goto LABEL_114;
      }

      if (v213 != 3001)
      {
        if (v213 == 4000)
        {
          CC_MD5_Update((&v213 + 8), bytes, v30);
        }

        goto LABEL_114;
      }

      if (!bytes)
      {
        goto LABEL_114;
      }

      *(&v213 + 1) += v30;
      if (v30 + v219 <= 0x1F)
      {
        memcpy(&v217 + v219, bytes, v30);
        v76 = v219 + v31;
LABEL_88:
        LODWORD(v219) = v76;
        goto LABEL_114;
      }

      v89 = &bytes[v30];
      if (v219)
      {
        v209 = &bytes[v30];
        memcpy(&v217 + v219, bytes, (32 - v219));
        v89 = v209;
        v214.i64[0] = 0x9E3779B185EBCA87 * __ROR8__(v214.i64[0] - 0x3D4D51C2D82B14B1 * v217, 33);
        v214.i64[1] = 0x9E3779B185EBCA87 * __ROR8__(v214.i64[1] - 0x3D4D51C2D82B14B1 * *(&v217 + 1), 33);
        v215 = 0x9E3779B185EBCA87 * __ROR8__(v215 - 0x3D4D51C2D82B14B1 * v218, 33);
        v216 = 0x9E3779B185EBCA87 * __ROR8__(v216 - 0x3D4D51C2D82B14B1 * *(&v218 + 1), 33);
        bytes += (32 - v219);
        LODWORD(v219) = 0;
      }

      if ((bytes + 32) <= v89)
      {
        v91 = v214.u64[1];
        v90 = v214.i64[0];
        v93 = v215;
        v92 = v216;
        do
        {
          v90 = 0x9E3779B185EBCA87 * __ROR8__(v90 - 0x3D4D51C2D82B14B1 * *bytes, 33);
          v91 = 0x9E3779B185EBCA87 * __ROR8__(v91 - 0x3D4D51C2D82B14B1 * *(bytes + 1), 33);
          v93 = 0x9E3779B185EBCA87 * __ROR8__(v93 - 0x3D4D51C2D82B14B1 * *(bytes + 2), 33);
          v92 = 0x9E3779B185EBCA87 * __ROR8__(v92 - 0x3D4D51C2D82B14B1 * *(bytes + 3), 33);
          bytes += 32;
        }

        while (bytes <= v89 - 32);
        v214.i64[0] = v90;
        v214.i64[1] = v91;
        v215 = v93;
        v216 = v92;
      }

      if (bytes < v89)
      {
        v76 = v89 - bytes;
        __memcpy_chk();
        goto LABEL_88;
      }

LABEL_114:

      memset(&v228[8], 0, 64);
      *v228 = v213;
      if (v213 > 3000)
      {
        v13 = v211;
        if (v213 > 4000)
        {
          switch(v213)
          {
            case 0xFA1:
              CC_SHA1_Final(&v228[8], (&v213 + 8));
              break;
            case 0x10A0:
              CC_SHA256_Final(&v228[8], (&v213 + 8));
              break;
            case 0x11A0:
              CC_SHA512_Final(&v228[8], (&v213 + 8));
              break;
          }

          goto LABEL_161;
        }

        if (v213 != 3001)
        {
          if (v213 == 4000)
          {
            CC_MD5_Final(&v228[8], (&v213 + 8));
          }

LABEL_161:
          v229[0] = *v228;
          v229[1] = *&v228[16];
          v229[2] = *&v228[32];
          v229[3] = *&v228[48];
          v230 = *&v228[64];
          if (*v228 > 3999)
          {
            if (*v228 > 4255)
            {
              if (*v228 == 4256)
              {
                v198 = v229 + 8;
                v199 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                v200 = v199;
                for (i = 0; i != 64; i += 2)
                {
                  v202 = *v198++;
                  v203 = &v199[i];
                  *v203 = MSVFastHexStringFromBytes_hexCharacters_30108[v202 >> 4];
                  v203[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v202 & 0xF];
                }

                v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                v170 = v200;
                v171 = 64;
                goto LABEL_207;
              }

              if (*v228 == 4512)
              {
                v176 = v229 + 8;
                v177 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                v178 = v177;
                for (j = 0; j != 128; j += 2)
                {
                  v180 = *v176++;
                  v181 = &v177[j];
                  *v181 = MSVFastHexStringFromBytes_hexCharacters_30108[v180 >> 4];
                  v181[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v180 & 0xF];
                }

                v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                v170 = v178;
                v171 = 128;
                goto LABEL_207;
              }
            }

            else
            {
              if (*v228 == 4000)
              {
                v188 = v229 + 8;
                v189 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                v190 = v189;
                for (k = 0; k != 32; k += 2)
                {
                  v192 = *v188++;
                  v193 = &v189[k];
                  *v193 = MSVFastHexStringFromBytes_hexCharacters_30108[v192 >> 4];
                  v193[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v192 & 0xF];
                }

                v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                v170 = v190;
                v171 = 32;
                goto LABEL_207;
              }

              if (*v228 == 4001)
              {
                v163 = v229 + 8;
                v164 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                v165 = v164;
                for (m = 0; m != 40; m += 2)
                {
                  v167 = *v163++;
                  v168 = &v164[m];
                  *v168 = MSVFastHexStringFromBytes_hexCharacters_30108[v167 >> 4];
                  v168[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v167 & 0xF];
                }

                v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                v170 = v165;
                v171 = 40;
                goto LABEL_207;
              }
            }
          }

          else
          {
            if (*v228 <= 2999)
            {
              if (*v228 == 1000)
              {
                v182 = *(&v229[0] + 1);
                if (*(&v229[0] + 1))
                {
                  v183 = v232 + 1;
                  quot = *(&v229[0] + 1);
                  v6 = v210;
                  do
                  {
                    v185 = lldiv(quot, 10);
                    quot = v185.quot;
                    if (v185.rem >= 0)
                    {
                      LOBYTE(v186) = v185.rem;
                    }

                    else
                    {
                      v186 = -v185.rem;
                    }

                    *(v183 - 2) = v186 + 48;
                    v162 = (v183 - 2);
                    --v183;
                  }

                  while (v185.quot);
                  if (v182 < 0)
                  {
                    *(v183 - 2) = 45;
                    v162 = (v183 - 2);
                  }

                  v161 = (v232 - v162);
                  goto LABEL_197;
                }

                goto LABEL_219;
              }

              if (*v228 == 2000)
              {
                v157 = DWORD2(v229[0]);
                if (DWORD2(v229[0]))
                {
                  v158 = v232;
                  v6 = v210;
                  do
                  {
                    v159 = ldiv(v157, 10);
                    v157 = v159.quot;
                    if (v159.rem >= 0)
                    {
                      LOBYTE(v160) = v159.rem;
                    }

                    else
                    {
                      v160 = -v159.rem;
                    }

                    *(v158 - 1) = v160 + 48;
                    v158 = (v158 - 1);
                  }

                  while (v159.quot);
                  v161 = (v232 - v158);
                  v162 = v158;
LABEL_197:
                  v187 = CFStringCreateWithBytes(0, v162, v161, 0x8000100u, 0);
LABEL_209:

                  if ([v13 isEqualToString:v187])
                  {
LABEL_212:

LABEL_213:
                    v16 = 1;
                    goto LABEL_216;
                  }

                  if ([v28 writeToURL:v8 options:0 error:error])
                  {
                    infoDictionary8 = [(MSVSegmentedCodingPackage *)self infoDictionary];
                    [infoDictionary8 setObject:v187 forKeyedSubscript:@"artworkHash"];

                    [(MSVSegmentedCodingPackage *)self setNeedsInfoDictionaryUpdate];
                    goto LABEL_212;
                  }

LABEL_215:
                  v16 = 0;
                  goto LABEL_216;
                }

LABEL_219:
                v187 = @"0";
                goto LABEL_208;
              }

              goto LABEL_218;
            }

            if (*v228 == 3000)
            {
              LODWORD(v231[0]) = bswap32(DWORD2(v229[0]));
              v194 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
              v195 = 0;
              v196 = v194 + 1;
              do
              {
                v197 = *(v231 + v195);
                *(v196 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v197 >> 4];
                *v196 = MSVFastHexStringFromBytes_hexCharacters_30108[v197 & 0xF];
                v196 += 2;
                ++v195;
              }

              while (v195 != 4);
              v169 = objc_alloc(MEMORY[0x1E696AEC0]);
              v170 = v194;
              v171 = 8;
              goto LABEL_207;
            }

            if (*v228 == 3001)
            {
              v231[0] = bswap64(*(&v229[0] + 1));
              v172 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
              v173 = 0;
              v174 = v172 + 1;
              do
              {
                v175 = *(v231 + v173);
                *(v174 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v175 >> 4];
                *v174 = MSVFastHexStringFromBytes_hexCharacters_30108[v175 & 0xF];
                v174 += 2;
                ++v173;
              }

              while (v173 != 8);
              v169 = objc_alloc(MEMORY[0x1E696AEC0]);
              v170 = v172;
              v171 = 16;
LABEL_207:
              v187 = [v169 initWithBytesNoCopy:v170 length:v171 encoding:4 freeWhenDone:1];
LABEL_208:
              v6 = v210;
              goto LABEL_209;
            }
          }

LABEL_218:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v207 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
          [currentHandler handleFailureInFunction:v207 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

          v187 = &stru_1F454A698;
          goto LABEL_208;
        }

        if (*(&v213 + 1) < 0x20uLL)
        {
          v140 = v215 + 0x27D4EB2F165667C5;
        }

        else
        {
          v140 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v214.i64[1], 57) + __ROR8__(v214.i64[0], 63) + __ROR8__(v215, 52) + __ROR8__(v216, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v214.i64[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v214.i64[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v215, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v216, 33))) - 0x7A1435883D4D519DLL;
        }

        v141 = v140 + *(&v213 + 1);
        v142 = BYTE8(v213) & 0x1F;
        if (v142 >= 8)
        {
          do
          {
            v143 = *v27++;
            v141 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v143, 33)) ^ v141, 37);
            v142 -= 8;
          }

          while (v142 > 7);
        }

        if (v142 >= 4)
        {
          v144 = *v27;
          v27 = (v27 + 4);
          v141 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v144) ^ v141, 41);
          v142 -= 4;
        }

        for (; v142; --v142)
        {
          v145 = *v27;
          v27 = (v27 + 1);
          v141 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v145) ^ v141, 53);
        }

        v146 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v141 ^ (v141 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v141 ^ (v141 >> 33))) >> 29));
        v135 = v146 ^ HIDWORD(v146);
LABEL_148:
        *&v228[8] = v135;
        goto LABEL_161;
      }

      v13 = v211;
      if (v213 <= 1999)
      {
        if (!v213)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v138 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
          [currentHandler2 handleFailureInFunction:v138 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

          goto LABEL_161;
        }

        if (v213 != 1000)
        {
          goto LABEL_161;
        }

        v105 = (*(&v213 + 1) + v214.i64[0]) ^ __ROR8__(v214.i64[0], 51);
        v106 = v214.i64[1] + (v215 ^ v216);
        v107 = __ROR8__(v215 ^ v216, 48);
        v108 = (v106 ^ v107) + __ROR8__(*(&v213 + 1) + v214.i64[0], 32);
        v109 = v108 ^ __ROR8__(v106 ^ v107, 43);
        v110 = v106 + v105;
        v111 = v110 ^ __ROR8__(v105, 47);
        v112 = (v108 ^ v216) + v111;
        v113 = v112 ^ __ROR8__(v111, 51);
        v114 = (__ROR8__(v110, 32) ^ 0xFFLL) + v109;
        v115 = __ROR8__(v109, 48);
        v116 = __ROR8__(v112, 32) + (v114 ^ v115);
        v117 = v116 ^ __ROR8__(v114 ^ v115, 43);
        v118 = v113 + v114;
        v119 = v118 ^ __ROR8__(v113, 47);
        v120 = v119 + v116;
        v121 = v120 ^ __ROR8__(v119, 51);
        v122 = __ROR8__(v118, 32) + v117;
        v123 = __ROR8__(v117, 48);
        v124 = __ROR8__(v120, 32) + (v122 ^ v123);
        v125 = v124 ^ __ROR8__(v122 ^ v123, 43);
        v126 = v121 + v122;
        v127 = v126 ^ __ROR8__(v121, 47);
        v128 = v127 + v124;
        v129 = v128 ^ __ROR8__(v127, 51);
        v130 = __ROR8__(v126, 32) + v125;
        v131 = __ROR8__(v125, 48);
        v132 = __ROR8__(v128, 32) + (v130 ^ v131);
        v133 = v132 ^ __ROR8__(v130 ^ v131, 43);
        v134 = v129 + v130;
        *(&v213 + 1) = v132;
        v214.i64[0] = v134 ^ __ROR8__(v129, 47);
        v214.i64[1] = __ROR8__(v134, 32);
        v215 = v133;
        v135 = v214.i64[0] ^ v132 ^ v214.i64[1] ^ v133;
        goto LABEL_148;
      }

      if (v213 != 2000)
      {
        if (v213 != 3000)
        {
          goto LABEL_161;
        }

        if (HIDWORD(v213))
        {
          v136 = vaddvq_s32(vorrq_s8(vshlq_u32(v214, xmmword_1C60451B0), vshlq_u32(v214, xmmword_1C60451A0)));
        }

        else
        {
          v136 = v214.i32[2] + 374761393;
        }

        v147 = DWORD2(v213) + v136;
        v148 = v217 & 0xF;
        if (v148 >= 4)
        {
          do
          {
            v149 = *v26;
            v26 = (v26 + 4);
            HIDWORD(v150) = v147 - 1028477379 * v149;
            LODWORD(v150) = HIDWORD(v150);
            v147 = 668265263 * (v150 >> 15);
            v148 -= 4;
          }

          while (v148 > 3);
        }

        for (; v148; --v148)
        {
          v151 = *v26;
          v26 = (v26 + 1);
          HIDWORD(v152) = v147 + 374761393 * v151;
          LODWORD(v152) = HIDWORD(v152);
          v147 = -1640531535 * (v152 >> 21);
        }

        v153 = -1028477379 * ((-2048144777 * (v147 ^ (v147 >> 15))) ^ ((-2048144777 * (v147 ^ (v147 >> 15))) >> 13));
        v154 = v153 ^ HIWORD(v153);
        goto LABEL_160;
      }

      switch(v214.u8[3])
      {
        case 1u:
          v139 = v214.u8[0];
          break;
        case 2u:
          v139 = v214.u16[0];
          break;
        case 3u:
          v139 = v214.u16[0] | (v214.u8[2] << 16);
          break;
        default:
          v155 = DWORD2(v213);
          goto LABEL_159;
      }

      v155 = (461845907 * ((380141568 * v139) | ((-862048943 * v139) >> 17))) ^ DWORD2(v213);
LABEL_159:
      v156 = -2048144789 * (v155 ^ HIDWORD(v213) ^ ((v155 ^ HIDWORD(v213)) >> 16));
      v154 = (-1028477387 * (v156 ^ (v156 >> 13))) ^ ((-1028477387 * (v156 ^ (v156 >> 13))) >> 16);
      DWORD2(v213) = v154;
LABEL_160:
      *&v228[8] = v154;
      goto LABEL_161;
    }

    if (v213 <= 1999)
    {
      if (!v213)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [currentHandler3 handleFailureInFunction:v72 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_114;
      }

      if (v213 != 1000)
      {
        goto LABEL_114;
      }

      v36 = HIBYTE(v216);
      v37 = v216 & 0xFFFFFFFFFFFFFFLL;
      v38 = HIBYTE(v216) & 7;
      if (v38)
      {
        v39 = 8 - v38;
        v40 = v30 - (8 - v38);
        if (v30 < 8 - v38)
        {
LABEL_34:
          if (v31)
          {
            v63 = 0;
            v64 = 0;
            v65 = v31;
            do
            {
              v66 = *bytes++;
              v64 |= v66 << v63;
              v63 += 8;
              --v65;
            }

            while (v65);
            if (v38)
            {
              v67 = (v64 << (8 * v38)) | ((v31 + v36) << 56) | v37;
            }

            else
            {
              v67 = v64 | ((v31 + v36) << 56);
            }
          }

          else
          {
            if (v38)
            {
              goto LABEL_114;
            }

            v67 = v36 << 56;
          }

          v216 = v67;
          goto LABEL_114;
        }

        v41 = 8 * v38;
        v42 = bytes;
        v43 = v216 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v44 = *v42++;
          v43 |= v44 << v41;
          v41 += 8;
        }

        while (v41 != 64);
        v45 = (*(&v213 + 1) + v214.i64[0]) ^ __ROR8__(v214.i64[0], 51);
        v46 = v214.i64[1] + (v215 ^ v43);
        v47 = __ROR8__(v215 ^ v43, 48);
        v48 = (v46 ^ v47) + __ROR8__(*(&v213 + 1) + v214.i64[0], 32);
        v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
        v50 = v46 + v45;
        v214.i64[1] = __ROR8__(v50, 32);
        v215 = v49;
        *(&v213 + 1) = v48 ^ v43;
        v214.i64[0] = v50 ^ __ROR8__(v45, 47);
        bytes += v39;
        v216 = (v39 + v36) << 56;
        v31 = v40;
      }

      if (v31 >= 8)
      {
        v51 = *(&v213 + 1);
        v54 = v214.i64[1];
        v53 = v214.i64[0];
        v52 = v215;
        do
        {
          v55 = *bytes;
          bytes += 8;
          v56 = v52 ^ v55;
          v57 = v51 + v53;
          v58 = v57 ^ __ROR8__(v53, 51);
          v59 = v54 + v56;
          v60 = __ROR8__(v56, 48);
          v61 = (v59 ^ v60) + __ROR8__(v57, 32);
          v52 = v61 ^ __ROR8__(v59 ^ v60, 43);
          v62 = v59 + v58;
          v53 = v62 ^ __ROR8__(v58, 47);
          v54 = __ROR8__(v62, 32);
          v214.i64[1] = v54;
          v215 = v52;
          v51 = v61 ^ v55;
          *(&v213 + 1) = v51;
          v214.i64[0] = v53;
          v31 -= 8;
          v36 += 8;
        }

        while (v31 > 7);
      }

      v38 = 0;
      goto LABEL_34;
    }

    if (v213 != 2000)
    {
      if (v213 != 3000 || !bytes)
      {
        goto LABEL_114;
      }

      v69 = v30 > 0xF || (DWORD2(v213) + v30) > 0xF;
      DWORD2(v213) += v30;
      HIDWORD(v213) |= v69;
      if (v30 + v217 > 0xF)
      {
        v81 = &bytes[v30];
        if (v217)
        {
          v208 = &bytes[v30];
          memcpy(&v215 + v217, bytes, (16 - v217));
          v81 = v208;
          HIDWORD(v82) = v214.i32[0] - 2048144777 * v215;
          LODWORD(v82) = HIDWORD(v82);
          v83 = -1640531535 * (v82 >> 19);
          HIDWORD(v82) = v214.i32[1] - 2048144777 * HIDWORD(v215);
          LODWORD(v82) = HIDWORD(v82);
          v214.i32[0] = v83;
          v214.i32[1] = -1640531535 * (v82 >> 19);
          HIDWORD(v82) = v214.i32[2] - 2048144777 * v216;
          LODWORD(v82) = HIDWORD(v82);
          v214.i32[2] = -1640531535 * (v82 >> 19);
          HIDWORD(v82) = v214.i32[3] - 2048144777 * HIDWORD(v216);
          LODWORD(v82) = HIDWORD(v82);
          bytes += (16 - v217);
          v214.i32[3] = -1640531535 * (v82 >> 19);
          LODWORD(v217) = 0;
        }

        if (bytes <= v81 - 16)
        {
          v84 = v214.i32[0];
          v85 = v214.i32[1];
          v86 = v214.i32[2];
          v87 = v214.i32[3];
          do
          {
            HIDWORD(v88) = v84 - 2048144777 * *bytes;
            LODWORD(v88) = HIDWORD(v88);
            v84 = -1640531535 * (v88 >> 19);
            HIDWORD(v88) = v85 - 2048144777 * *(bytes + 1);
            LODWORD(v88) = HIDWORD(v88);
            v85 = -1640531535 * (v88 >> 19);
            HIDWORD(v88) = v86 - 2048144777 * *(bytes + 2);
            LODWORD(v88) = HIDWORD(v88);
            v86 = -1640531535 * (v88 >> 19);
            HIDWORD(v88) = v87 - 2048144777 * *(bytes + 3);
            LODWORD(v88) = HIDWORD(v88);
            v87 = -1640531535 * (v88 >> 19);
            bytes += 16;
          }

          while (bytes <= v81 - 16);
          v214.i64[0] = __PAIR64__(v85, v84);
          v214.i64[1] = __PAIR64__(v87, v86);
        }

        if (bytes >= v81)
        {
          goto LABEL_114;
        }

        v70 = v81 - bytes;
        __memcpy_chk();
      }

      else
      {
        memcpy(&v215 + v217, bytes, v30);
        v70 = v217 + v31;
      }

      LODWORD(v217) = v70;
      goto LABEL_114;
    }

    v73 = v30 + v214.u8[3];
    if (v73 < 4)
    {
      v74 = &v214.i8[v214.u8[3]];
      v75 = (v73 - v214.i8[3]);
      if (v75 <= 1)
      {
        if (v73 == v214.i8[3])
        {
LABEL_113:
          HIDWORD(v213) += v31;
          goto LABEL_114;
        }

        if (v75 == 1)
        {
          *v74 = *bytes;
          goto LABEL_113;
        }

LABEL_97:
        memcpy(v74, bytes, (v73 - v214.i8[3]));
        goto LABEL_113;
      }

      if (v75 == 2)
      {
        v94 = *bytes;
      }

      else
      {
        if (v75 != 3)
        {
          goto LABEL_97;
        }

        v94 = *bytes;
        v74[2] = bytes[2];
      }

      *v74 = v94;
      goto LABEL_113;
    }

    LOBYTE(v77) = 0;
    v78 = v73 & 0xFFFFFFFFFFFFFFFCLL;
    if (v214.u8[3] > 1u)
    {
      if (v214.u8[3] != 2)
      {
        LOBYTE(v79) = 0;
        LOBYTE(v80) = 0;
        v95 = 0;
        if (v214.u8[3] == 3)
        {
          LOBYTE(v79) = v214.i8[0];
          v77 = HIBYTE(v214.u16[0]);
          LOBYTE(v80) = v214.i8[2];
          v95 = *bytes;
        }

        goto LABEL_103;
      }

      LOBYTE(v79) = v214.i8[0];
      v77 = HIBYTE(v214.u16[0]);
      v80 = *bytes;
    }

    else
    {
      if (!v214.i8[3])
      {
        v79 = *bytes;
        v77 = *bytes >> 8;
        v80 = HIWORD(*bytes);
        v95 = HIBYTE(*bytes);
        goto LABEL_103;
      }

      LOBYTE(v79) = v214.i8[0];
      LOBYTE(v77) = *bytes;
      v80 = *(bytes + 1);
    }

    v95 = v80 >> 8;
LABEL_103:
    v96 = v73 & 3;
    v97 = (v80 << 16) | (v95 << 24) | v79 | (v77 << 8);
    HIDWORD(v98) = (461845907 * ((380141568 * v97) | ((-862048943 * v97) >> 17))) ^ DWORD2(v213);
    LODWORD(v98) = HIDWORD(v98);
    v99 = 5 * (v98 >> 19) - 430675100;
    DWORD2(v213) = v99;
    v100 = &bytes[-v214.u8[3] + 4];
    v101 = &bytes[v78 - v214.u8[3]];
    while (v100 < v101)
    {
      v102 = *v100;
      v100 += 4;
      HIDWORD(v103) = (461845907 * ((380141568 * v102) | ((-862048943 * v102) >> 17))) ^ v99;
      LODWORD(v103) = HIDWORD(v103);
      v99 = 5 * (v103 >> 19) - 430675100;
      DWORD2(v213) = v99;
    }

    if (v96 > 1)
    {
      if (v96 == 2)
      {
        v214.i16[0] = *v101;
      }

      else
      {
        v104 = *v101;
        v214.i8[2] = v101[2];
        v214.i16[0] = v104;
      }
    }

    else if (v96)
    {
      v214.i8[0] = *v101;
    }

    v214.i8[3] = v96;
    goto LABEL_113;
  }

  return 0;
}

- (BOOL)saveWithError:(id *)error
{
  v5 = [_MPCPlaybackSessionArchive alloc];
  packageURL = [(MSVSegmentedCodingPackage *)self packageURL];
  v7 = [(_MPCPlaybackSessionArchive *)v5 initWithURL:packageURL];

  if (!v7 || (-[_MPCPlaybackSessionArchive identifier](v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), -[_MPCPlaybackSessionArchive identifier](self, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, (v10 & 1) != 0) || -[MSVSegmentedCodingPackage deleteWithError:](v7, "deleteWithError:", error))
  {
    date = [MEMORY[0x1E695DF00] date];
    lastModifiedDate = self->_lastModifiedDate;
    self->_lastModifiedDate = date;

    v15.receiver = self;
    v15.super_class = _MPCPlaybackSessionArchive;
    v13 = [(MSVSegmentedCodingPackage *)&v15 saveWithError:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_MPCPlaybackSessionArchive)initWithURL:(id)l identifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _MPCPlaybackSessionArchive;
  v7 = [(MSVSegmentedCodingPackage *)&v15 initWithURL:l];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    infoDictionary = [(MSVSegmentedCodingPackage *)v7 infoDictionary];
    v11 = [infoDictionary objectForKeyedSubscript:@"identifier"];

    if (([v11 isEqualToString:identifierCopy] & 1) == 0)
    {
      [(MSVSegmentedCodingPackage *)v7 reset];
      v12 = v7->_identifier;
      infoDictionary2 = [(MSVSegmentedCodingPackage *)v7 infoDictionary];
      [infoDictionary2 setObject:v12 forKeyedSubscript:@"identifier"];

      [(MSVSegmentedCodingPackage *)v7 setNeedsInfoDictionaryUpdate];
    }
  }

  return v7;
}

- (_MPCPlaybackSessionArchive)initWithURL:(id)l
{
  v10.receiver = self;
  v10.super_class = _MPCPlaybackSessionArchive;
  v3 = [(MSVSegmentedCodingPackage *)&v10 initWithURL:l];
  v4 = v3;
  if (v3 && (-[MSVSegmentedCodingPackage infoDictionary](v3, "infoDictionary"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"identifier"], v6 = objc_claimAutoreleasedReturnValue(), identifier = v4->_identifier, v4->_identifier = v6, identifier, v5, !v4->_identifier))
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

@end