@interface NSData(CBOR)
+ (id)dataWithCBOR:()CBOR encodingKeyOrder:;
@end

@implementation NSData(CBOR)

+ (id)dataWithCBOR:()CBOR encodingKeyOrder:
{
  v86[16] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 tag];

  if (v6)
  {
    v7 = [v5 tag];
    objc_opt_self();
    v8 = [v7 unsignedLongLongValue];

    if (HIDWORD(v8))
    {
      LOBYTE(v81) = -37;
      v86[0] = bswap64(v8);
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
      [v6 appendBytes:&v81 length:1];
      v9 = v86;
      v10 = v6;
      v11 = 8;
    }

    else if (v8 < 0x10000)
    {
      if (v8 < 0x100)
      {
        if (v8 > 0x17)
        {
          LOBYTE(v81) = -40;
          LOBYTE(v86[0]) = v8;
          v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:2];
          [v6 appendBytes:&v81 length:1];
          v9 = v86;
          v10 = v6;
        }

        else
        {
          LOBYTE(v81) = v8 | 0xC0;
          v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:1];
          v6 = v10;
          v9 = &v81;
        }

        v11 = 1;
      }

      else
      {
        LOBYTE(v81) = -39;
        LOWORD(v86[0]) = bswap32(v8) >> 16;
        v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
        [v6 appendBytes:&v81 length:1];
        v9 = v86;
        v10 = v6;
        v11 = 2;
      }
    }

    else
    {
      LOBYTE(v81) = -38;
      LODWORD(v86[0]) = bswap32(v8);
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
      [v6 appendBytes:&v81 length:1];
      v9 = v86;
      v10 = v6;
      v11 = 4;
    }

    [v10 appendBytes:v9 length:v11];
  }

  switch([v5 type])
  {
    case 0:
      v29 = [v5 unsignedLongLongValue];
      objc_opt_self();
      if (HIDWORD(v29))
      {
        LOBYTE(v81) = 27;
        v30 = bswap64(v29);
        goto LABEL_36;
      }

      if (v29 >= 0x10000)
      {
        LOBYTE(v81) = 26;
        v43 = bswap32(v29);
        goto LABEL_58;
      }

      if (v29 >= 0x100)
      {
        LOBYTE(v81) = 25;
        v44 = bswap32(v29);
        goto LABEL_69;
      }

      if (v29 <= 0x17)
      {
        LOBYTE(v81) = v29;
        goto LABEL_78;
      }

      LOBYTE(v81) = 24;
      LOBYTE(v86[0]) = v29;
      goto LABEL_105;
    case 1:
      v31 = [v5 longLongValue];
      objc_opt_self();
      v32 = ~v31;
      if (v31 > 0xFFFFFFFEFFFFFFFFLL)
      {
        if (v31 > 0xFFFFFFFFFFFEFFFFLL)
        {
          if (v31 > 0xFFFFFFFFFFFFFEFFLL)
          {
            if (v31 < 0xFFFFFFFFFFFFFFE8)
            {
              LOBYTE(v81) = 56;
              LOBYTE(v86[0]) = ~v31;
LABEL_105:
              v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:2];
              [v15 appendBytes:&v81 length:1];
              v33 = v86;
              v34 = v15;
            }

            else
            {
              LOBYTE(v81) = 31 - v31;
LABEL_78:
              v34 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:1];
              v15 = v34;
              v33 = &v81;
            }

            v35 = 1;
          }

          else
          {
            LOBYTE(v81) = 57;
            v44 = bswap32(v32);
LABEL_69:
            LOWORD(v86[0]) = HIWORD(v44);
            v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
            [v15 appendBytes:&v81 length:1];
            v33 = v86;
            v34 = v15;
            v35 = 2;
          }
        }

        else
        {
          LOBYTE(v81) = 58;
          v43 = bswap32(v32);
LABEL_58:
          LODWORD(v86[0]) = v43;
          v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
          [v15 appendBytes:&v81 length:1];
          v33 = v86;
          v34 = v15;
          v35 = 4;
        }
      }

      else
      {
        LOBYTE(v81) = 59;
        v30 = bswap64(v32);
LABEL_36:
        v86[0] = v30;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
        [v15 appendBytes:&v81 length:1];
        v33 = v86;
        v34 = v15;
        v35 = 8;
      }

      [v34 appendBytes:v33 length:v35];
      if (!v6)
      {
        goto LABEL_108;
      }

      goto LABEL_122;
    case 2:
      v23 = [v5 data];
      goto LABEL_38;
    case 3:
      v23 = [v5 string];
LABEL_38:
      v12 = v23;
      v15 = [CBOR encodeMajorType2or3:v23];
      goto LABEL_121;
    case 4:
      v36 = [v5 array];
      objc_opt_self();
      v15 = objc_opt_new();
      [v36 count];
      if ([v36 count] >> 32)
      {
        LOBYTE(v80[0]) = -101;
        v86[0] = bswap64([v36 count]);
        [v15 appendBytes:v80 length:1];
        v37 = v86;
        v38 = v15;
        v39 = 8;
      }

      else if ([v36 count] < 0x10000)
      {
        if ([v36 count] < 0x100)
        {
          if ([v36 count] < 0x18)
          {
            LOBYTE(v80[0]) = [v36 count] ^ 0x80;
            v37 = v80;
          }

          else
          {
            LOBYTE(v80[0]) = -104;
            LOBYTE(v86[0]) = [v36 count];
            [v15 appendBytes:v80 length:1];
            v37 = v86;
          }

          v38 = v15;
          v39 = 1;
        }

        else
        {
          LOBYTE(v80[0]) = -103;
          LOWORD(v86[0]) = bswap32([v36 count]) >> 16;
          [v15 appendBytes:v80 length:1];
          v37 = v86;
          v38 = v15;
          v39 = 2;
        }
      }

      else
      {
        LOBYTE(v80[0]) = -102;
        LODWORD(v86[0]) = bswap32([v36 count]);
        [v15 appendBytes:v80 length:1];
        v37 = v86;
        v38 = v15;
        v39 = 4;
      }

      [v38 appendBytes:v37 length:v39];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v12 = v36;
      v68 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v82;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v82 != v70)
            {
              objc_enumerationMutation(v12);
            }

            v72 = [MEMORY[0x277CBEA90] dataWithCBOR:*(*(&v81 + 1) + 8 * i)];
            [v15 appendData:v72];
          }

          v69 = [v12 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v69);
      }

      goto LABEL_121;
    case 5:
      v24 = v5;
      objc_opt_self();
      v25 = [v24 dictionary];
      v15 = objc_opt_new();
      [v25 count];
      if ([v25 count] >> 32)
      {
        v85 = -69;
        v86[0] = bswap64([v25 count]);
        [v15 appendBytes:&v85 length:1];
        v26 = v86;
        v27 = v15;
        v28 = 8;
      }

      else if ([v25 count] < 0x10000)
      {
        if ([v25 count] < 0x100)
        {
          if ([v25 count] < 0x18)
          {
            v85 = [v25 count] - 96;
            v26 = &v85;
          }

          else
          {
            v85 = -72;
            LOBYTE(v86[0]) = [v25 count];
            [v15 appendBytes:&v85 length:1];
            v26 = v86;
          }

          v27 = v15;
          v28 = 1;
        }

        else
        {
          v85 = -71;
          LOWORD(v86[0]) = bswap32([v25 count]) >> 16;
          [v15 appendBytes:&v85 length:1];
          v26 = v86;
          v27 = v15;
          v28 = 2;
        }
      }

      else
      {
        v85 = -70;
        LODWORD(v86[0]) = bswap32([v25 count]);
        [v15 appendBytes:&v85 length:1];
        v26 = v86;
        v27 = v15;
        v28 = 4;
      }

      [v27 appendBytes:v26 length:v28];
      v45 = [v24 orderedKeys];

      if (v45)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v46 = [v24 orderedKeys];
        v47 = [v46 countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (!v47)
        {
          goto LABEL_101;
        }

        v48 = v47;
        v78 = v24;
        v79 = v5;
        v49 = *v82;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v82 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v81 + 1) + 8 * j);
            v52 = [MEMORY[0x277CBEA90] dataWithCBOR:v51];
            [v15 appendData:v52];

            v53 = MEMORY[0x277CBEA90];
            v54 = [v25 objectForKey:v51];
            v55 = [v53 dataWithCBOR:v54];
            [v15 appendData:v55];
          }

          v48 = [v46 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v48);
      }

      else
      {
        v78 = v24;
        v79 = v5;
        v56 = [v25 allKeys];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __51__CBOR_Encoder__encodeMajorType5_encodingKeyOrder___block_invoke;
        v80[3] = &__block_descriptor_40_e23_q24__0__CBOR_8__CBOR_16l;
        v80[4] = a4;
        v57 = [v56 sortedArrayUsingComparator:v80];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v46 = v57;
        v58 = [v46 countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v82;
          do
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v82 != v60)
              {
                objc_enumerationMutation(v46);
              }

              v62 = *(*(&v81 + 1) + 8 * k);
              v63 = [MEMORY[0x277CBEA90] dataWithCBOR:v62];
              [v15 appendData:v63];

              v64 = MEMORY[0x277CBEA90];
              v65 = [v25 objectForKey:v62];
              v66 = [v64 dataWithCBOR:v65];
              [v15 appendData:v66];
            }

            v59 = [v46 countByEnumeratingWithState:&v81 objects:v86 count:16];
          }

          while (v59);
        }
      }

      v24 = v78;
      v5 = v79;
LABEL_101:

      if (!v6)
      {
        goto LABEL_108;
      }

      goto LABEL_122;
    case 6:
    case 7:
    case 8:
      v12 = v5;
      objc_opt_self();
      LOBYTE(v81) = 0;
      v13 = [v12 value];
      objc_opt_class();
      objc_opt_isKindOfClass();

      v14 = [v12 value];
      if ([v12 valueSize] == 2 && objc_msgSend(v12, "type") == 6)
      {
        LOBYTE(v81) = -7;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:3];
        [v15 appendBytes:&v81 length:1];
        [v14 doubleValue];
        LOWORD(v86[0]) = 0;
        v16 = v15;
        v17 = 2;
LABEL_24:
        [v16 appendBytes:v86 length:v17];
        goto LABEL_26;
      }

      if ([v12 valueSize] == 4 && objc_msgSend(v12, "type") == 7)
      {
        LOBYTE(v81) = -6;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:5];
        [v15 appendBytes:&v81 length:1];
        [v14 floatValue];
        LODWORD(v86[0]) = bswap32(v18);
        v16 = v15;
        v17 = 4;
        goto LABEL_24;
      }

      if ([v12 valueSize] == 8 && objc_msgSend(v12, "type") == 8)
      {
        LOBYTE(v81) = -5;
        v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:9];
        [v15 appendBytes:&v81 length:1];
        [v14 doubleValue];
        v86[0] = bswap64(v20);
        v16 = v15;
        v17 = 8;
        goto LABEL_24;
      }

      v15 = 0;
LABEL_26:

LABEL_121:
      if (v6)
      {
LABEL_122:
        v73 = objc_autoreleasePoolPush();
        v74 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v6];
        v75 = v74;
        if (v15)
        {
          [v74 appendData:v15];
        }

        v67 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v75];

        objc_autoreleasePoolPop(v73);
      }

      else
      {
LABEL_108:
        if (!v15)
        {
LABEL_109:
          v15 = objc_opt_new();
        }

        v15 = v15;
        v67 = v15;
      }

      v76 = *MEMORY[0x277D85DE8];

      return v67;
    case 9:
      v21 = 0;
      goto LABEL_40;
    case 10:
      v21 = 1;
LABEL_40:
      v19 = [CBOR encodeMajorType7Bool:v21];
      goto LABEL_48;
    case 11:
      objc_opt_self();
      v22 = -10;
      goto LABEL_46;
    case 12:
    case 16:
      goto LABEL_20;
    case 13:
      v40 = [v5 longLongValue];
      objc_opt_self();
      if (v40 > 0x1F)
      {
        if (v40 - 32 > 0xDF)
        {
LABEL_20:
          v19 = +[CBOR encodeMajorType7Undefined];
          goto LABEL_48;
        }

        LOBYTE(v86[0]) = -8;
        BYTE1(v86[0]) = v40;
        v41 = objc_alloc(MEMORY[0x277CBEA90]);
        v42 = 2;
      }

      else
      {
        v22 = v40 | 0xE0;
LABEL_46:
        LOBYTE(v86[0]) = v22;
        v41 = objc_alloc(MEMORY[0x277CBEA90]);
        v42 = 1;
      }

      v19 = [v41 initWithBytes:v86 length:v42];
LABEL_48:
      v15 = v19;
      if (!v6)
      {
        goto LABEL_108;
      }

      goto LABEL_122;
    case 15:
      objc_opt_self();
      v22 = -1;
      goto LABEL_46;
    default:
      if (!v6)
      {
        goto LABEL_109;
      }

      v15 = 0;
      goto LABEL_122;
  }
}

@end