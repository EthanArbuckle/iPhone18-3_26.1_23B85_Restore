uint64_t sub_1002E71AC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  if ((STACK[0x320] & 2) != 0)
  {
    v54 = STACK[0x270];
  }

  else
  {
    v54 = STACK[0x318];
  }

  LODWORD(STACK[0x320]) = a41 ^ a50;
  v55 = a34 ^ LODWORD(STACK[0x2CC]) ^ HIDWORD(a30);
  LODWORD(STACK[0x270]) = LODWORD(STACK[0x268]) ^ HIDWORD(a33) ^ a32 ^ a40;
  v56 = LODWORD(STACK[0x26C]) ^ a25;
  LODWORD(STACK[0x268]) = HIDWORD(a34) - a35;
  v57 = a31 ^ a33;
  v58 = (v53 - 1196507809) & 0x475147EC;
  v59 = *(STACK[0x520] + 8 * a26) ^ 0x2020202020202020;
  v60 = 0x594D01AFB39951C5 * v59 - ((0x329A035F6732A38ALL * v59) & 0x3E7F22A2ADD26D64) - 0x60C06EAEA916C94ELL;
  v61 = ((((v58 + 0x2BA1C41F4FAB4DC2) ^ v60 ^ v51) + a26) ^ 0x1C6A6FEDEFD9BFE9) - 0x1C6A6FEDEFD9BFE9 + ((2 * (((v58 + 0x2BA1C41F4FAB4DC2) ^ v60 ^ v51) + a26)) & 0x38D4DFDBDFB37FD2);
  v62 = ((HIDWORD(v61) - ((v61 >> 31) & 0x1A037A0BELL) + 0x6F9EB46BD01BD05FLL) ^ 0x6F9EB46BD01BD05FLL) + v61;
  v63 = ((2 * v62) & 0xFF6EC9FFBEF35FF4) + (v62 ^ 0x7FB764FFDF79AFFALL) - 0x7FB764FFDF79AFFALL;
  v64 = v63 + (((v63 >> 16) - ((v63 >> 15) & 0x3A62DDE5E96) + 0x4A8901D316EF2F4BLL) ^ 0xB576FE2CE910D0B4) + 1;
  v65 = (v64 ^ 0xDFFFFFFDB7BEE1C9) + 0x2000000248411E37 + ((2 * v64) & 0xBFFFFFFB6F7DC392);
  v66 = (((v65 >> 8) - ((v65 >> 7) & 0x1CF65A9C118E1A2) + 0x76E7B2D4E08C70D1) ^ 0x76E7B2D4E08C70D1) + v65;
  v67 = ((2 * v66) & 0xF97B3DFFF7DEF9AALL) + (v66 ^ 0xFCBD9EFFFBEF7CD5);
  v68 = v67 - ((2 * v67 - 0x7099168104432FD6) & 0xCBE4A06471FFB3AELL) + 0x2DA5C4F1B6DE41ECLL;
  v69 = (((v60 ^ 0x7ACDC1636E16EF65 ^ v68) + a26) ^ 0x79F7D7C9C77EFABCLL) - 0x79F7D7C9C77EFABCLL + ((2 * ((v60 ^ 0x7ACDC1636E16EF65 ^ v68) + a26)) & 0xF3EFAF938EFDF578);
  v70 = ((HIDWORD(v69) - ((v69 >> 31) & 0x2BD3FA74) - 0x5A0B0389EA1602C6) ^ 0xA5F4FC7615E9FD3ALL) + v69;
  v71 = ((2 * v70) & 0x335ABDF6FD7FBFFALL) + (v70 ^ 0x99AD5EFB7EBFDFFDLL) + 0x6652A10481402003;
  v72 = v71 + (((v71 >> 16) - ((v71 >> 15) & 0x180E6F167F63ELL) + 0x769BC07378B3FB1FLL) ^ 0x89643F8C874C04E0) + 1;
  v73 = (v72 ^ 0x7E3DFFBA9BEBFFFDLL) - 0x7E3DFFBA9BEBFFFDLL + ((2 * v72) & 0xFC7BFF7537D7FFFALL);
  v74 = (((v73 >> 8) - ((v73 >> 7) & 0x285FB2069719ELL) + 0x6C0142FD9034B8CFLL) ^ 0x6C0142FD9034B8CFLL) + v73;
  v75 = ((2 * v74) & 0x77F3FBB137B1DDDELL) + (v74 ^ 0xBBF9FDD89BD8EEEFLL);
  v76 = v75 - ((2 * v75 + 0x10EE2BCDBBE9EBF6) & 0x313CDFEA9B47A076) + 0x211585DC2B98C636;
  v77 = (((v60 ^ 0x7A1FEA41B4AE689 ^ v76) + a26) ^ 0xEFB7E97DB5EFFD57) + 0x104816824A1002A9 + ((2 * ((v60 ^ 0x7A1FEA41B4AE689 ^ v76) + a26)) & 0xDF6FD2FB6BDFFAAELL);
  v78 = ((HIDWORD(v77) - ((v77 >> 31) & 0xCB3FAE38) - 0x5EC03A489A6028E4) ^ 0xA13FC5B7659FD71CLL) + v77;
  v79 = ((2 * v78) & 0xFFFCBDFEBFB3CB62) + (v78 ^ 0x7FFE5EFF5FD9E5B1) - 0x7FFE5EFF5FD9E5B1;
  v80 = v79 + (((v79 >> 16) - ((v79 >> 15) & 0x3A1B8641A3E6) - 0x440CE2F23CDF2E0DLL) ^ 0x440CE2F23CDF2E0CLL) + 1;
  v81 = (v80 ^ 0xFDFF8CFFFD1FFC1ELL) + 0x200730002E003E2 + ((2 * v80) & 0xFBFF19FFFA3FF83CLL);
  v82 = (((v81 >> 8) - ((v81 >> 7) & 0x17B2CA2C03FD86ALL) + 0x2BD9651601FEC35) ^ 0x2BD9651601FEC35) + v81;
  v83 = ((2 * v82) & 0xD9BFB6725FDBFF9ELL) + (v82 ^ 0xECDFDB392FEDFFCFLL);
  v84 = ((((v83 - 0x5F08C6FAB893400CLL) >> 25) - (((v83 - 0x5F08C6FAB893400CLL) >> 24) & 0xBE37E894) + 0x735A01805F1BF44ALL) ^ 0x735A01805F1BF44ALL) + v83 - 0x5F08C6FAB893400CLL;
  v85 = ((2 * v84) & 0xF7F76BFABDFFFE7ELL) + (v84 ^ 0x7BFBB5FD5EFFFF3FLL) - 0x7BFBB5FD5EFFFF3FLL;
  v86 = v85 + (((v85 >> 12) - ((v85 >> 11) & 0x166DB3C089247ALL) + 0x794B36D9E044923DLL) ^ 0x86B4C9261FBB6DC2) + 1;
  v87 = (v86 ^ 0x7BFB9CE7FFFE90BBLL) - 0x7BFB9CE7FFFE90BBLL + ((2 * v86) & 0xF7F739CFFFFD2176);
  v88 = (((v87 >> 7) - ((v87 >> 6) & 0x17E6C19DA844FC4) - 0x3340C9F312BDD81ELL) ^ 0xCCBF360CED4227E2) + v87;
  v89 = v88 - ((2 * v88) & 0xA60691C2D5B01F58) - 0x2CFCB71E9527F054;
  v90 = ((((v89 >> 30) ^ 0x1F822101) + (v89 ^ 0x7E088407FA8A926)) ^ 0x5DBE577FBFFAF677) - 0x5DBE577FBFFAF677 + ((2 * (((v89 >> 30) ^ 0x1F822101) + (v89 ^ 0x7E088407FA8A926))) & 0xBB7CAEFF7FF5ECEELL);
  v91 = (((v90 >> 11) - ((v90 >> 10) & 0x6253C3992ECA4) + 0x4383129E1CC97652) ^ 0x4383129E1CC97652) + v90;
  v92 = ((((((2 * v91) & 0xFDDABFDAFBB7BCFELL) + (v91 ^ 0x7EED5FED7DDBDE7FLL) - 0x7EED5FED7DDBDE7FLL) >> 3) - (((((2 * v91) & 0xFDDABFDAFBB7BCFELL) + (v91 ^ 0x7EED5FED7DDBDE7FLL) - 0x7EED5FED7DDBDE7FLL) >> 2) & 0x106239E336BF9974) - 0x17CEE30E64A03346) ^ 0x17CEE30E64A03345) + ((2 * v91) & 0xFDDABFDAFBB7BCFELL) + (v91 ^ 0x7EED5FED7DDBDE7FLL);
  v93 = v92 - ((2 * v92 + 0x225402504484304) & 0x9D91808C875FBB1ALL) - 0x30249FA73A2C00F1;
  v94 = (((v93 ^ 0x4EC8C04643AFDD8DLL) + 0x4FBE0CAA3467084DLL) ^ 0x93D3B5FAE7EFA77BLL) + 0x6C2C4A0518105885 + ((2 * ((v93 ^ 0x4EC8C04643AFDD8DLL) + 0x4FBE0CAA3467084DLL)) & 0x27A76BF5CFDF4EF6);
  v95 = (((v94 >> 25) - ((v94 >> 24) & 0xBBA4CAF26ELL) - 0x70D690222D9A86C9) ^ 0x8F296FDDD2657937) + v94;
  v96 = ((2 * v95) & 0xE5EFE3DA6FF3FCFELL) + (v95 ^ 0xF2F7F1ED37F9FE7FLL) + 0xD080E12C8060181;
  v97 = v96 + (((v96 >> 14) - ((v96 >> 13) & 0x2306080B72A88) + 0x36891830405B9544) ^ 0xC976E7CFBFA46ABBLL) + 1;
  v98 = ((((((2 * v97) & 0xF32EFD6DDFFDFF76) + (v97 ^ 0xF9977EB6EFFEFFBBLL) + 0x668814910010045) >> 7) - (((((2 * v97) & 0xF32EFD6DDFFDFF76) + (v97 ^ 0xF9977EB6EFFEFFBBLL) + 0x668814910010045) >> 6) & 0x1D15327F7048466) - 0x5717566C047DBDCDLL) ^ 0x5717566C047DBDCCLL) + ((2 * v97) & 0xF32EFD6DDFFDFF76) + (v97 ^ 0xF9977EB6EFFEFFBBLL);
  v99 = v98 - ((2 * v98 + 0xCD102922002008CLL) & 0xAE2F4324F02CCCC2) + 0x5D8022DB881766A7;
  v100 = ((2 * ((v99 ^ 0x5717A19278166661) - 0x36ADEE2BF04AA845)) & 0xCFE7BFEBEBBF9FFELL) + (((v99 ^ 0x5717A19278166661) - 0x36ADEE2BF04AA845) ^ 0x67F3DFF5F5DFCFFFLL) - 0x67F3DFF5F5DFCFFFLL;
  v101 = v100 + (((v100 >> 28) - ((v100 >> 27) & 0xA11C8CC5CLL) + 0x1919DBA508E4662ELL) ^ 0xE6E6245AF71B99D1) + 1;
  v102 = ((2 * v101) & 0xB771FFF97DFFBD7ELL) + (v101 ^ 0xDBB8FFFCBEFFDEBFLL) + 0x2447000341002141;
  v103 = v102 + (((v102 >> 13) - ((v102 >> 12) & 0x55C2A49045BCCLL) + 0x19C2AE1524822DE6) ^ 0xE63D51EADB7DD219) + 1;
  v104 = (v103 ^ 0x7CFEE1BFA94F6BFCLL) - 0x7CFEE1BFA94F6BFCLL + ((2 * v103) & 0xF9FDC37F529ED7F8);
  v105 = (((v104 >> 5) - ((v104 >> 4) & 0xF450D4D569903BELL) - 0x85D795954B37E21) ^ 0xF7A286A6AB4C81DFLL) + v104;
  v106 = v105 - ((2 * v105) & 0x5A861D0970D98832) + 0x2D430E84B86CC419;
  v107 = ((2 * ((v106 ^ 0x240B536D8397C80CLL) - ((v106 >> 29) ^ 0x1205A9B6CLL))) & 0x9F0CBB81F7FDD77ELL) + (((v106 ^ 0x240B536D8397C80CLL) - ((v106 >> 29) ^ 0x1205A9B6CLL)) ^ 0x4F865DC0FBFEEBBFLL) - 0x4F865DC0FBFEEBBFLL;
  v108 = v107 + (((v107 >> 11) - ((v107 >> 10) & 0x22E36EB0690C82) - 0x688E8E48A7CB79BFLL) ^ 0x688E8E48A7CB79BELL) + 1;
  v109 = (v108 ^ 0x6FF7FDD3BEDD5A79) - 0x6FF7FDD3BEDD5A79 + ((2 * v108) & 0xDFEFFBA77DBAB4F2);
  v110 = (((v109 >> 8) - ((v109 >> 7) & 0xA666F066D893A0) + 0x73533378336C49D0) ^ 0x73533378336C49D0) + v109;
  v111 = v110 - ((2 * v110) & 0xD2D46407AFD96792) - 0x1695CDFC28134C37;
  v112 = (((v111 ^ 0xE96A3203D7ECB3C9) - 0x1D7EC9236D906644) ^ 0x7FFFADDE7FFFEAB7) - 0x7FFFADDE7FFFEAB7 + ((2 * ((v111 ^ 0xE96A3203D7ECB3C9) - 0x1D7EC9236D906644)) & 0xFFFF5BBCFFFFD56ELL);
  v113 = (((v112 >> 31) - ((v112 >> 30) & 0x3C37831DELL) - 0x1B66F16E1E43E711) ^ 0xE4990E91E1BC18EFLL) + v112;
  v114 = (v113 ^ 0x5BDDE77D7FD3FBB3) - 0x5BDDE77D7FD3FBB3 + ((2 * v113) & 0xB7BBCEFAFFA7F766);
  v115 = (((v114 >> 15) - ((v114 >> 14) & 0x15B15A6E82292) - 0xF3152752C8BEEB7) ^ 0xF0CEAD8AD3741149) + v114;
  v116 = (v115 ^ 0x7E7BD63BCF7BFFBFLL) - 0x7E7BD63BCF7BFFBFLL + ((2 * v115) & 0xFCF7AC779EF7FF7ELL);
  v117 = (((v116 >> 5) - ((v116 >> 4) & 0xCDB9269F44B88ALL) + 0x66DC934FA25C45) ^ 0x66DC934FA25C45) + v116;
  v118 = v117 - ((2 * v117) & 0x806974D07DDDC222) - 0x3FCB4597C1111EEFLL;
  LODWORD(v66) = (v75 - ((2 * v75 + 1109133068) & 0x3B8135C6) - 1093755287) ^ (v67 - ((2 * v67 - 2115048640) & 0xC2649964) + 573162066) ^ (v83 - ((2 * v83 + 435283276) & 0xAD47660A) - 476273237) ^ v93 ^ v111;
  v119 = v66 ^ a1 ^ v50 & (v66 >> 2);
  v120 = ((2 * ((v118 ^ 0xA96B83E29759FBF1) - ((v118 >> 28) ^ 0xA96B83E29))) & 0x2F6FFFAEE9F45FDELL) + (((v118 ^ 0xA96B83E29759FBF1) - ((v118 >> 28) ^ 0xA96B83E29)) ^ 0x17B7FFD774FA2FEFLL) - 0x17B7FFD774FA2FEFLL;
  v121 = v120 + (((v120 >> 11) - ((v120 >> 10) & 0x1CF9D1BFD4D690) - 0x34518317201594B8) ^ 0x34518317201594B7) + 1;
  v122 = ((((((2 * v121) & 0xD97FBF767BBB9F7ELL) + (v121 ^ 0xECBFDFBB3DDDCFBFLL) + 0x13402044C2223041) >> 5) - (((((2 * v121) & 0xD97FBF767BBB9F7ELL) + (v121 ^ 0xECBFDFBB3DDDCFBFLL) + 0x13402044C2223041) >> 4) & 0x1249ABA43180D04) - 0x376DB2A2DE73F97ELL) ^ 0x376DB2A2DE73F97DLL) + ((2 * v121) & 0xD97FBF767BBB9F7ELL) + (v121 ^ 0xECBFDFBB3DDDCFBFLL);
  v123 = v122 - ((2 * v122 + 0x2680408984446084) & 0x56BEBBCB6EEA49C6) + 0x3E9F7E2A79975525;
  v124 = ((((v123 >> 31) ^ 0x9AF7AA1A) + (v123 ^ 0x4D7BD50D60008D1ELL)) ^ 0x3F17E8B3CFEFBF3FLL) - 0x3F17E8B3CFEFBF3FLL + ((2 * (((v123 >> 31) ^ 0x9AF7AA1A) + (v123 ^ 0x4D7BD50D60008D1ELL))) & 0x7E2FD1679FDF7E7ELL);
  v125 = (((v124 >> 10) - ((v124 >> 9) & 0x482CED4FCD0144) + 0x26E41676A7E680A2) ^ 0x26E41676A7E680A2) + v124;
  v126 = (v125 ^ 0x57BFDFFF6DDCFDFDLL) - 0x57BFDFFF6DDCFDFDLL + ((2 * v125) & 0xAF7FBFFEDBB9FBFALL);
  v127 = (((v126 >> 7) - ((v126 >> 6) & 0x2791E483D94D760) - 0x12C370DBE1359450) ^ 0xED3C8F241ECA6BB0) + v126;
  v128 = v127 - ((2 * v127) & 0xC340CB7B190D0ECALL) + 0x61A065BD8C868765;
  v129 = v50 & ((v127 - ((2 * v127) & 0x190D0ECA) - 1937340571) >> 2) ^ (v127 - ((2 * v127) & 0x190D0ECA) - 1937340571);
  LODWORD(v111) = (v129 & 0x80 | ((((v129 & 0x80) >> 7) & 1) << 8) | 0xF5DCB644) ^ 0x100;
  v130 = ((v111 + 170084668) & (v119 ^ 0xDB292201)) == ((2 * ((v111 + 170084668) & (v119 ^ 0xDB292201))) & 0x45A99550);
  v131 = (v67 + 68191019) ^ 0x119044C7 ^ (((v67 + 68191019) >> 2) - (((v67 + 68191019) >> 1) & 0xBA4899E) + 366101711) & v50;
  HIDWORD(v166) = v131 - ((2 * v131) & 0x7CF08EC2) - 1099413663;
  v132 = (v75 + 1680281873) ^ 0x10E4 ^ (((v75 + 1680281873) >> 2) - (((v75 + 1680281873) >> 1) & 0x88623C8) + 71504356) & v50;
  LODWORD(a40) = v132 - ((2 * v132) & 0x94BFCF86) - 899684413;
  v133 = (v83 - 804126671) ^ 0x19200431 ^ (((v83 - 804126671) >> 2) - (((v83 - 804126671) >> 1) & 0x1E431A72) + 522292537) & v50;
  HIDWORD(a34) = v133 - ((2 * v133) & 0x7A6CC46E) - 1120509385;
  v134 = v76 >> 2;
  LODWORD(v76) = ((v76 >> 2) & 0x18240413 ^ (v75 - ((2 * v75 - 1142297610) & 0x9B47A076) + 731432502) & 0xFE660413 | (v75 - ((2 * v75 - 1142297610) & 0x9B47A076) + 731432502) & 0x199FBEC) ^ 0x5D83D439;
  LODWORD(v67) = v83 - ((2 * v83 - 1816147402) & 0x3284C5B8) + 1663191031;
  v135 = v50 & (v68 >> 2) ^ v68 ^ v134 & 0x19872E4 ^ (v76 - ((2 * v76) & 0x33E0B58E) - 1712301369) ^ v67 ^ v50 & (v67 >> 2);
  LODWORD(a33) = v106 ^ v89 ^ v50 & ((v106 ^ v89) >> 2);
  v136 = v50 & (v118 >> 2) ^ v118;
  v137 = v111 + 258428732;
  v138 = -81740604 - v111;
  if (v130)
  {
    v138 = v137;
  }

  v139 = (v119 ^ 0xDB292206) - 88344064 + v138 - ((2 * ((v119 ^ 0xDB292206) - 88344064 + v138)) & 0x879E4F36) - 1009834085;
  v140 = ((2 * ((v128 ^ 0x61A065BD8C868765) + 0xE588F902A4621BELL)) & 0xF7429F8FBC7F3E7ELL) + (((v128 ^ 0x61A065BD8C868765) + 0xE588F902A4621BELL) ^ 0x7BA14FC7DE3F9F3FLL) - 0x7BA14FC7DE3F9F3FLL;
  v141 = v140 + (((v140 >> 31) - ((v140 >> 30) & 0x1916D8F2ELL) - 0x4F02E77337493869) ^ 0x4F02E77337493868) + 1;
  v142 = (v141 ^ 0x67E7EDEEB965A767) - 0x67E7EDEEB965A767 + ((2 * v141) & 0xCFCFDBDD72CB4ECELL);
  v143 = (((v142 >> 15) - ((v142 >> 14) & 0x9D71CF187176) - 0x3069B1471873C745) ^ 0xCF964EB8E78C38BBLL) + v142;
  v144 = (v143 ^ 0xFF6F7FF7DF7BFDE7) + 0x90800820840219 + ((2 * v143) & 0xFEDEFFEFBEF7FBCELL);
  LODWORD(v144) = (((v144 >> 7) - 891648336 - ((v144 >> 6) & 0x95B50D60)) ^ 0xCADA86B0) + v144;
  v145 = v54 ^ 0x14178BD3;
  v146 = (2 * ((STACK[0x2C0] & v145) - ((2 * (STACK[0x2C0] & v145)) & 0x7356A114)) - 212426476) ^ 0xF356A114;
  v147 = ((LODWORD(STACK[0x2C0]) + v145) ^ 0x5DACA88F) + ((2 * (LODWORD(STACK[0x2C0]) + v145)) & 0xBB59511E) - 1571596430 + ((v146 + 1752306657 + (~(2 * v146) | 0x2F1BD83F)) ^ 0x978DEC1F);
  LODWORD(STACK[0x26C]) = v54;
  v148 = v54 ^ a20 ^ (v54 >> 2) & 0x19BC76F7 ^ (v147 - ((2 * v147) & 0xBF764534) - 541384038) ^ (((v147 - ((2 * v147) & 0xBF764534) - 541384038) ^ LODWORD(STACK[0x388])) >> 2) & 0x19BC76F7 ^ v129 & 0xFFFFFF7F ^ v139;
  v149 = (LODWORD(STACK[0x308]) >> 2) & 0x19BC76F7 ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x368]) ^ (((LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x308])) ^ LODWORD(STACK[0x368])) >> 2) & 0x19BC76F7 ^ v52;
  LODWORD(STACK[0x24C]) = LODWORD(STACK[0x25C]) ^ 0x1D6ED43D;
  HIDWORD(v165) = v149 ^ v135 ^ v99 ^ (v99 >> 2) & 0x19BC76F7 ^ v136 ^ (v144 - ((2 * v144) & 0x599D0D3E) + 751732383) ^ ((v144 - ((2 * v144) & 0x599D0D3E) + 751732383) >> 2) & 0x19BC76F7;
  LODWORD(v166) = v148;
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x234]) ^ 0xAF934AD6;
  LOBYTE(v149) = a39 ^ 3;
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x358]) ^ 0x54720133;
  LODWORD(STACK[0x318]) = v56;
  LODWORD(STACK[0x398]) = v56 ^ 0xBCC86E74;
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x348]) ^ 0x52E4A7CA;
  v150 = LODWORD(STACK[0x2F8]) ^ 0x29u;
  v151 = v57 ^ 0xED7E5575;
  STACK[0x2C0] = v123;
  LODWORD(STACK[0x2CC]) = v55;
  LODWORD(v165) = (v55 >> 2) & 0x19BC76F7;
  v152 = STACK[0x540];
  v153 = ((((v58 ^ 0xFFFFF97A) - 1142783996) ^ 0xBBE27FDA) - ((2 * (((v58 ^ 0xFFFFF97A) - 1142783996) ^ 0xBBE27FDA)) & 0x11267ED0) - 2003615896) ^ 0xE0F4E000;
  v154 = ((v153 ^ 0x68) << v149) - ((2 * ((v153 ^ 0x68) << v149)) & 0xFFFFFFEC);
  v155 = ((((v153 ^ 0x68) & LOBYTE(STACK[0x380])) - ((2 * ((v153 ^ 0x68) & LOBYTE(STACK[0x380]))) & 0x5A) - 83) ^ 0xAD) >> LODWORD(STACK[0x3A0]);
  v156 = (2 * ((STACK[0x370] & 0xA7C66161) - ((2 * (STACK[0x370] & 0xA7C66161)) & 0x63AA6E46)) - 475369914) ^ 0xE3AA6E46;
  v157 = (v155 + ((2 * v155) & 0x80) + 64) ^ 0x40 | (v154 - 10) ^ 0xF6;
  v158 = (v156 - ((2 * v156) & 0x1A88B838) - 1924899812) ^ 0x2A823D7D;
  v159 = (((v158 & STACK[0x398]) - 1819240841 - ((2 * (v158 & STACK[0x398])) & 0x27212CEE)) ^ 0x93909677) >> LODWORD(STACK[0x3A8]);
  v160 = (((v158 & STACK[0x388]) + 1289062386 - ((2 * (v158 & STACK[0x388])) & 0x99AB0FE4)) ^ 0x4CD587F2) << LODWORD(STACK[0x390]);
  v161 = (2 * v160) & 0xE84678CC;
  v162 = ((v160 + 1948466278 - v161) ^ 0x74233C66) + ((v159 + 552443425 - ((2 * v159) & 0x41DB3C42)) ^ 0x20ED9E21);
  v163 = (v150 ^ (v157 - ((2 * v157) & 0x5C) + 46));
  *(STACK[0x530] + 4 * v163) = v151 ^ (v162 - ((2 * v162) & 0x7E3D7036) + 1058977819);
  *(v152 + 4 * v163) = v57 ^ 0x85A77B4A;
  return MEMORY[0x5CD7A6B60](v150, 2117955638, v58 ^ 0x47177F38, v151, v57, 656485614, 3774144513, v161, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v123 >> 2, a36, a37, a38, v165, a40, v166);
}

uint64_t sub_1002F99A8()
{
  v1 = STACK[0x2F8];
  (*(&off_100C005A0 + LODWORD(STACK[0x2F8]) + 1410))(v0);
  v2 = (*(&off_100C005A0 + (v1 ^ 0xA8E)))(STACK[0x530]);
  return sub_1002F99E8(v2);
}

uint64_t sub_1002F9AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W8>)
{
  LODWORD(STACK[0x368]) = a4;
  v5 = a5 - 748;
  v6 = ((&STACK[0x4D4] ^ 0x54BDFBBFDDBED9FCLL) - 0x54BDFBBFDDBED9FCLL + ((2 * &STACK[0x4D4]) & 0xA97BF77FBB7DB3F8)) % 0x25;
  STACK[0x380] = (v6 << (v5 + 81)) & 0x32;
  STACK[0x370] = (v6 ^ 0xDFE3DF4BEFFCFFD9) + 0x201C20B410030037;
  STACK[0x360] = STACK[0x420];
  v7 = *(a3 + 8 * ((116 * ((((v5 ^ 0x32C) - 710) ^ 0x4BF7A388) == 1274521438)) ^ v5));
  STACK[0x3B0] = STACK[0x430];
  return v7(a1, a2, STACK[0x340]);
}

uint64_t sub_1002F9D30()
{
  v0 = STACK[0x3BC];
  STACK[0x3B0] = (*(&off_100C005A0 + LODWORD(STACK[0x3BC]) + 931))(STACK[0x370] + STACK[0x380], 0x100004077774924);
  v1 = (*(&off_100C005A0 + (v0 ^ 0xC85)))();
  v2 = v0 + 415341354 + v1 - ((2 * v1) & 0x31832FB6) - 2085;
  LODWORD(xmmword_100CBC3B8) = v2;
  DWORD1(xmmword_100CBC3B8) = 685121821 - ((2 * (((1812433253 * (v2 ^ 0x18C197DB ^ (v2 >> 30))) ^ 0xEFEB76BF) + (((v2 ^ 0x18C197DB ^ (v2 >> 30)) * ((v0 - 1621654493) ^ 0x47589A33)) & 0xDFD6ED7E) + 724506137) + 164292178) & 0x31832FB6) + ((1812433253 * (v2 ^ 0x18C197DB ^ (v2 >> 30))) ^ 0xEFEB76BF) + (((v2 ^ 0x18C197DB ^ (v2 >> 30)) * ((v0 - 1621654493) ^ 0x47589A33)) & 0xDFD6ED7E);
  return (*(&off_100C005A0 + v0 + 847))();
}

uint64_t sub_1002F9E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 ^ (v8 + 2949);
  LODWORD(STACK[0x4D4]) = v5;
  v11 = (*(a5 + 8 * (v6 + 1621655402)))(v7 + 4, 0);
  v12 = v7[4] + 1616031516 - ((2 * v7[4]) & 0xC0A55E38);
  v7[1] = v7[6] + 1616031516 - ((2 * v7[6]) & 0xC0A55E38);
  v7[2] = v12;
  v13 = (*(&off_100C005A0 + (v6 ^ v8)))(v11);
  v7[3] = v13 + 1616031516 - ((v13 << (v6 ^ (v8 - 123) ^ 0xD7)) & 0xC0A55E38);
  v14 = (*(&off_100C005A0 + v6 + 1621655386))();
  *v7 = v14 + 1616031516 - ((2 * v14) & 0xC0A55E38);
  LODWORD(STACK[0x3A8]) = STACK[0x3B0] - ((2 * STACK[0x3B0]) & 0xF8742B2C) + 2084181398;
  v15 = STACK[0x3BC];
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x3BC]) + 830386473;
  LODWORD(STACK[0x398]) = v15 + 743797289;
  v16 = (DWORD1(xmmword_100CBC3B8) ^ 0xBA1309F3 ^ (1664525 * (xmmword_100CBC3B8 ^ 0x18C197DB ^ (xmmword_100CBC3B8 >> 30)) - ((3329050 * (xmmword_100CBC3B8 ^ 0x18C197DB ^ (xmmword_100CBC3B8 >> 30))) & 0x45A53C50) - 1563255256)) + (*v7 ^ 0x6052AF1C);
  v17 = (v16 ^ 0xDEA6FFB7) + 1556025907 + ((2 * v16) & 0xBD4DFF6E);
  DWORD1(xmmword_100CBC3B8) = v17 - ((2 * v17 + 154393644) & 0x31832FB6) - 581204495;
  v18 = 1614251083 * ((~((v9 - 152) | 0xB577FEE37E175F06) + ((v9 - 152) & 0xB577FEE37E175F06)) ^ 0xFEA2DAC3E9F1CD19);
  v19 = v9 - 206;
  *(v19 + 70) = v18 ^ 0xE1AFDF18;
  *(v9 - 144) = -1614251083 * ((~((v9 - 152) | 0x7E175F06) + ((v9 - 152) & 0x7E175F06)) ^ 0xE9F1CD19);
  *(v9 - 152) = (v10 + 796841064) ^ v18;
  *(v19 + 94) = 3786399510u - v18;
  *(v9 - 128) = (v10 + 796841125) ^ v18;
  *(v9 - 124) = -1345307115 - v18 + v10;
  *(v9 - 120) = v18 + v10 + 796841064 - 14;
  v20 = (*(&off_100C005A0 + (v10 ^ 0xC8D)))(v9 - 152);
  return (*(&off_100C005A0 + *(v9 - 148)))(v20);
}

uint64_t sub_1002FA26C()
{
  LODWORD(xmmword_100CBC3B8) = dword_100CBCD74;
  *(v6 - 120) = v4 + v0 + 1635373080 + 52;
  v7 = v6 - 206;
  *(v7 + 70) = (v2 - 270763948) ^ v4;
  *(v6 - 144) = v5;
  *(v6 - 152) = (v0 + 1635373080) ^ v4;
  *(v6 - 128) = (v0 + 1635373129) ^ v4;
  *(v6 - 124) = -1345307115 - v4 + v0 - 285;
  *(v7 + 94) = v3;
  v8 = (*(v1 + 8 * (v0 + 616)))(v6 - 152);
  return (*(&off_100C005A0 + *(v6 - 148)))(v8);
}

uint64_t sub_1002FA4DC@<X0>(int a1@<W8>)
{
  v4 = v2;
  v5 = v2 + 1;
  v6 = *(&xmmword_100CBC3B8 + (v4 - 885558643));
  v7 = (*(&xmmword_100CBC3B8 + (v5 - 885558643)) ^ 0xC0E7322C ^ (1566083941 * (v6 ^ 0x18C197DB ^ (v6 >> 30)) - ((-1162799414 * (v6 ^ 0x18C197DB ^ (v6 >> 30))) & 0xB04D4BEE) - 668555785)) - v4;
  *(&xmmword_100CBC3B8 + (v5 - 885558643)) = v7 - ((2 * v7 + 697375460) & 0x31832FB6) + 1300899149;
  v8 = 734352403 * ((-2 - ((~(v3 - 152) | 0x1DFE4EB72E2FB5D1) + ((v3 - 152) | 0xE201B148D1D04A2ELL))) ^ 0x504F8A3F35B69DFLL);
  *(v3 - 128) = v8 + a1 + 963070425 + 31;
  *(v3 - 124) = 1 - v8;
  v9 = v3 - 206;
  *(v9 + 62) = (v4 - 190670834) + v8;
  *(v3 - 152) = (a1 + 963070425) ^ v8;
  *(v9 + 94) = v8 + 694887807;
  *(v3 - 136) = -1174361759 - v8 + a1;
  *(v3 - 132) = ((a1 + 963070425) ^ 0x50) + v8;
  v10 = (*(v1 + 8 * (a1 ^ 0xCB1)))(v3 - 152);
  return (*(&off_100C005A0 + *(v3 - 120)))(v10);
}

uint64_t sub_1002FA720()
{
  v3 = v0 ^ 0x2A179B1D;
  if (((STACK[0x388] - v0) | (v0 - STACK[0x388])) <= (v0 ^ 0xD5E86034))
  {
    v4 = -1732143141;
  }

  else
  {
    v4 = -1732143140;
  }

  LODWORD(xmmword_100CBC3B8) = v4 - (v0 ^ 0x2A179FCA);
  (*(v1 + 8 * (v0 ^ 0x2A1797A3)))(STACK[0x3B0]);
  v11 = (v3 - 1225) | 0x422;
  v12 = &xmmword_100CBC3B8;
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15.i64[0] = 0x100000001;
  v15.i64[1] = 0x100000001;
  v5.i32[0] = DWORD1(xmmword_100CBC3B8);
  v5.i32[1] = *(&xmmword_100CBC3B8 + (v11 ^ 0x42DLL));
  v5.i32[2] = HIDWORD(xmmword_100CBC3B8);
  v6 = vextq_s8(v13, v5, 0xCuLL);
  v7 = v5;
  v7.i32[3] = dword_100CBC3C8[0];
  v8 = veorq_s8(vorrq_s8(vandq_s8(v7, vnegq_f32(v15)), vandq_s8(v6, v14)), vdupq_n_s32(0x18C197DAu));
  v9.i32[0] = *(v2 - 224 + 4 * ((BYTE4(xmmword_100CBC3B8) & 1) == 0));
  v9.i32[1] = *(v2 - 224 + 4 * ((*(&xmmword_100CBC3B8 + (v11 ^ 0x42DLL)) & 1) == 0));
  v9.i32[2] = *(v2 - 224 + 4 * (~HIDWORD(xmmword_100CBC3B8) & 1));
  v9.i32[3] = *(v2 - 224 + 4 * (~dword_100CBC3C8[0] & 1));
  xmmword_100CBC3B8 = veorq_s8(veorq_s8(veorq_s8(xmmword_100CBC9EC, v9), vdupq_n_s32(0x19457C94u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v8, vandq_s8(vaddq_s32(v8, v8), vdupq_n_s32(0x71336E7Cu))), vdupq_n_s32(0xB899B73E)), 1uLL));
  return (*(&off_100C005A0 + (v11 ^ 0x1C)))();
}

uint64_t sub_1002FA870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = (v11 + 4 * (v10 + a4));
  v14 = v10 + 1;
  *v13 = v13[397] ^ *(v12 - 224 + 4 * ((*(v11 + 4 * (v14 + a4)) & 1) == 0)) ^ ((((*(v11 + 4 * (v14 + a4)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a6 - 1)) - ((v8 ^ 0x10F85FE9) & (2 * ((*(v11 + 4 * (v14 + a4)) & 0x7FFFFFFE | v9 & 0x80000000) ^ (a6 - 1)))) - 1197885634) >> 1) ^ 0x19457C94;
  LODWORD(v13) = ((v14 - v8) | (v8 - v14)) >= 0;
  return (*(a8 + 8 * (((8 * v13) | (v13 << 9)) ^ (v8 - 1640705382))))();
}

uint64_t sub_1002FA91C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = ((v16 ^ 0x8CDBF7BC) + 317667929) | 0x400;
  v20 = &unk_100CBC744;
  v21 = vld1q_dup_f32(v20);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  v24 = (v19 + 436);
  a8.i32[0] = *(v18 + 4 * (v24 ^ 0x6D2));
  a8.i32[1] = dword_100CBC74C;
  a8.i32[2] = dword_100CBC750;
  v25 = vextq_s8(v21, a8, 0xCuLL);
  v26 = a8;
  v26.i32[3] = dword_100CBC754;
  v27 = veorq_s8(vorrq_s8(vandq_s8(v26, vnegq_f32(v23)), vandq_s8(v25, v22)), vdupq_n_s32(0x18C197DAu));
  v28.i32[0] = *(v17 + 4 * ((*(v18 + 4 * (v24 ^ 0x6D2)) & 1) == 0));
  v28.i32[1] = *(v17 + 4 * (~dword_100CBC74C & 1));
  v28.i32[2] = *(v17 + 4 * (~dword_100CBC750 & 1));
  v28.i32[3] = *(v17 + 4 * (~dword_100CBC754 & 1));
  unk_100CBC744 = veorq_s8(veorq_s8(veorq_s8(xmmword_100CBC3B8, v28), vdupq_n_s32(0x7A575C4Du)), vshrq_n_u32(vaddq_s32(vsubq_s32(v27, vandq_s8(vaddq_s32(v27, v27), vdupq_n_s32(0xFD7BED18))), vdupq_n_s32(0x7EBDF68Cu)), 1uLL));
  return (*(a16 + 8 * v19))();
}

uint64_t sub_1002FAA60@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v5 = (*v3 & 0x7FFFFFFE | v3[623] & 0x80000000) ^ a2;
  v3[623] = v3[396] ^ *(v4 - 224 + 4 * ((*v3 & 1) == 0)) ^ ((v5 + ((v2 - 352) ^ 0x4C22B32F) - 2 * (v5 & 0x4C22B7FC ^ *v3 & 4)) >> ((v2 - 96) ^ 0xD7)) ^ 0x6318FCF7;
  return (*(a1 + 8 * ((3616 * (LODWORD(STACK[0x4D4]) > 0x26F)) ^ v2)))();
}

uint64_t sub_1002FAB14()
{
  LODWORD(STACK[0x4D4]) = 0;
  v2 = v0;
  v3 = LODWORD(STACK[0x4D4])++;
  dword_100CBC3B4 = v3 + 761298294;
  v4 = (dword_100CBC3B0 - 184653043);
  v5 = 734352403 * ((((v1 - 152) | 0x379DD0262443CE1BLL) - (v1 - 152) + ((v1 - 152) & 0xC8622FD9DBBC31E0)) ^ 0x2F676632F9371215);
  *(v1 - 124) = 1 - v5;
  *(v1 - 136) = -1174361759 - v5 + v2;
  *(v1 - 132) = ((v2 + 649460068) ^ 0x1B) + v5;
  *(v1 - 152) = (v2 + 649460068) ^ v5;
  v6 = v1 - 206;
  *(v6 + 62) = v4 + v5;
  *(v1 - 128) = v5 + v2 + 649460068 - 51;
  *(v6 + 94) = v5 + 521538264;
  v7 = (*(&off_100C005A0 + (v2 ^ 0xCB1)))(v1 - 152);
  return (*(&off_100C005A0 + *(v1 - 120)))(v7);
}

uint64_t sub_1002FAC4C(uint64_t a1, uint64_t a2)
{
  if (v2 >= LODWORD(STACK[0x3BC]) + 521537026)
  {
    v4 = dword_100CBC3B0 + 1;
  }

  else
  {
    v4 = v3 + 1198;
  }

  dword_100CBC3B0 = v4;
  return sub_1002FADD8(a1, a2, STACK[0x340], &off_100C005A0, byte_1009E35C0, byte_100A0D9B0, byte_1009E8DA0, 3508697990);
}

uint64_t sub_1002FADD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, int a7@<W8>)
{
  v11 = ((((a7 - 1166172578) & 0x45825EB5) - 106) ^ (a6 + 1082) ^ v8) >> (v7 - 62);
  LOBYTE(v11) = (v11 - ((2 * v11) & 0xD8) + 108) ^ 0x7E;
  *(a1 + (v10 - 1757063253)) = v11;
  return (*(a2 + 8 * ((4090 * (v10 - ((*(a3 + ((v10 - 1757063253) & 0xFLL)) ^ (121 * ((v10 - 85) & 0xF)) ^ *(((v10 - 1757063253) & 0xFLL) + a4 + 4) ^ *(((v10 - 1757063253) & 0xFLL) + a5 + 2)) != v11) == v9)) ^ a7)))();
}

uint64_t sub_1002FAEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x390]) = v5;
  STACK[0xD80] = 0xDC0117D44509A70BLL;
  LODWORD(STACK[0x4D4]) = dword_100CBC3B4 - 761298293;
  v7 = dword_100CBC3B0;
  v8 = 218380439 * ((((2 * (v6 - 152)) | 0xC5A50A16762591B2) - (v6 - 152) - 0x62D2850B3B12C8D9) ^ 0x7CACBF9803374DB8);
  v9 = v6 - 206;
  *(v9 + 86) = 706191307 - v8;
  STACK[0x388] = v7;
  *(v9 + 54) = v7 + v8;
  *(v6 - 144) = v8;
  *(v6 - 140) = ((v4 + 2017757611) ^ 0x10) + v8;
  *(v6 - 132) = v4 + 2017757611 - v8;
  *(v6 - 128) = ((v4 + 2017757611) ^ 0x54) - v8;
  *(v6 - 136) = (v4 - 1723652839) ^ v8;
  v11 = (*(a4 + 8 * (v4 ^ 0xCA2)))(v6 - 152);
  return (*(a4 + 8 * *(v6 - 112)))(v11);
}

uint64_t sub_1002FB06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x420] = STACK[0x360];
  STACK[0x3D8] = v4;
  STACK[0x430] = STACK[0x3B0];
  return (*(a4 + 8 * (((*(STACK[0x378] + 8) == 0) * (((v5 + 210494393) & 0xF3741CD6 ^ 0xFFFFFA28) + (v5 ^ 0x90))) ^ v5)))();
}

void sub_1002FB0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 ^ 0xCBE)))(v7);
  *(v6 + 8) = 0;
  *(v6 + 16) = v5 + 3144;
  JUMPOUT(0x1002CF1B8);
}

void sub_1002FB120(uint64_t a1)
{
  v1 = 1377923 * ((a1 + 1081604151 - 2 * (a1 & 0x4077F837)) ^ 0x6E68820B);
  v2 = *(a1 + 8) ^ v1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  v6 = *(&off_100C005A0 + ((((*(&off_100C005A0 + v2 + 1511))(0x94D107FF7CAC8315 * *(v3 - 0x5D683D8EF4EDE1E1) - 0x2FA90CD539D610EFLL, v4, (v5 + v1), &v7, &v8) == 0) * ((v2 + 1018013322) & 0xC3525EFF ^ 0x800)) ^ v2));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002FB230()
{
  v3 = v1 + 1413;
  v4 = ((v3 - 1949761565) ^ 0x8BC90202 ^ *(v2 - 0x5D683D8EF4EDE1C1) ^ 0x17B5BF92) + (((*(v2 - 0x5D683D8EF4EDE1D1) ^ 0xF2E67FE1) + 11) ^ 0x377FDFAF) - 931127215 + (((v3 - 1949761565) & 0x7436FCB2 ^ 0x6EFFBBFE) & (2 * ((*(v2 - 0x5D683D8EF4EDE1D1) ^ 0xF2E67FE1) + 11)));
  v5 = (*(v0 + 8 * (v3 + 111)))(((2 * v4) & 0xEBE5FE78) + (v4 ^ 0x75F2FF3C) - 1978859324, 0x100004077774924);
  return (*(v0 + 8 * ((51 * (v5 == 0)) ^ v3)))(v5, v6);
}

uint64_t sub_1002FB348(uint64_t a1)
{
  *a1 = -12851;
  *(a1 + 2) = -56;
  v6 = *(v2 + v4);
  *(a1 + 3) = ((v5 ^ 0x52) + 73) ^ HIBYTE(v6);
  *(a1 + 4) = BYTE2(v6) ^ 0x2F;
  *(a1 + 5) = (((v5 - 96) | 0x28) + 78) ^ BYTE1(v6);
  *(a1 + 6) = v6 ^ 0x28;
  return (*(v1 + 8 * ((7 * ((*(v2 + v4) ^ v3 ^ 0x7F9FE7DFBFB3E1E6) - 0x7F9FE7DF1DAA25BALL + ((2 * (*(v2 + v4) ^ v3)) & 0x17F67C3CCLL) != 2718546988)) ^ v5)))();
}

uint64_t sub_1002FB458(uint64_t a1, uint64_t a2)
{
  v10 = v6 < v2;
  *(v8 + v4 - 0x2F8A6C78F09A6B93) = *(v7 + v5 - 0x226CC7425D66C4FFLL);
  v11 = a2 - 0x5118C4C50DE4DFF4;
  v12 = a2 + 1;
  v13 = v10 ^ (v11 < v2);
  v14 = v11 < v6;
  if (!v13)
  {
    v10 = v14;
  }

  return (*(v9 + 8 * ((239 * v10) ^ v3)))(a1, v12);
}

uint64_t sub_1002FB4F0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (a2 + 1611300098) | 0x8D01050;
  v7 = ((2 * (((v6 - 1978929681) ^ *(v3 + v5)) + 7)) & 0xBB7F5BBE) + 2003763183 + ((217 * (((v6 - 1759154014) | 0x10A) ^ 0x399) - 574642192) ^ (((v6 - 1978929681) ^ *(v3 + v5)) + 7));
  v8 = *(v3 + v4);
  v9 = ((v7 | ((v7 < 0x552EADCE) << 32)) + a1 - 1429122510);
  *v9 = HIBYTE(v8) ^ 0xDE;
  v9[1] = BYTE2(v8) ^ 0x7C;
  v9[2] = BYTE1(v8) ^ 0x73;
  v9[3] = v8 ^ 0xB4;
  v10 = (*(v3 + v4) ^ 0x77F5DD54E95F4583) - 0x77F5DD5496106E0CLL + ((2 * (*(v3 + v4) ^ 0x17B5BA7Du)) & 0x1FDD5FFFCLL);
  return (*(v2 + 8 * ((61 * (((v10 - v6) | (v6 - v10)) >= 0)) ^ (v6 - 1759153748))))();
}

uint64_t sub_1002FB714@<X0>(int a1@<W8>)
{
  v10 = v6 < v1;
  *(v7 + v4 - 0x190FE84129133045) = *(v3 + v5 + ((v2 + 593) ^ 0xEA1D022102B666C2));
  if (v10 == v8 - 0x4A0161930DFDAB5CLL < v1)
  {
    v10 = v8 - 0x4A0161930DFDAB5CLL < v6;
  }

  return (*(v9 + 8 * ((!v10 * a1) ^ v2)))();
}

uint64_t sub_1002FB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14)
{
  v16 = *v14;
  v17 = v14[8];
  v18 = v14[3];
  *(v14[4] - 0x61F273179E46884ELL) = a12;
  *(v18 - 0x5D2B4A43FB20F38ELL) = a14 - ((a14 << ((v15 - 106) ^ 0x84)) & 0xFC1BB2CA) - 32646811;
  *(v17 - 0x19A6F59238F03C52) = a1;
  *(v16 - 0x361FD146DC902E64) = a11;
  return sub_1002FB83C();
}

void sub_1002FB860(uint64_t a1)
{
  v1 = *(a1 + 40) - 275407499 * ((2 * (a1 & 0xC566AEED) - a1 + 983126290) ^ 0x1ADFEFC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1002FBB54()
{
  (*(v3 + 8 * (v2 ^ 0x8C0)))();
  (*(v3 + 8 * (v2 + 1984)))(v1 - 0x5D683D8EF4EDE1E1);
  v5 = (((v2 - 35652841) & 0x562FFE5F) + 1299568862) & 0x5E7A2DFB;
  *(v0 + 120) = v4;
  v6 = (*(v3 + 8 * (v5 + 1920)))(40, 0x1010040725982CDLL) == 0;
  return (*(v3 + 8 * (((((v5 ^ 0x5CB ^ v6) & 1) == 0) | (2 * (((v5 ^ 0x5CB ^ v6) & 1) == 0))) ^ v5)))();
}

uint64_t sub_1002FBC78(uint64_t *a1)
{
  v6 = (v2 + 831633094) & 0xCE6E4E7E;
  v7 = *(v1 + 56) ^ v4;
  *a1 = *(v1 + 48) ^ v4;
  a1[1] = 0;
  a1[3] = 0;
  v8 = (*(v3 + 8 * (v6 ^ 0xE47)))(v7 ^ 0xF2E67FE1, 0x100004077774924);
  a1[1] = v8;
  return (*(v3 + 8 * (((v8 == 0) * ((((v6 + 549976578) | 0x87028494) + 1479901137) ^ ((v6 - 564) | 0xE5))) ^ v6)))(v8, v9);
}

uint64_t sub_1002FBD48@<X0>(int a1@<W8>)
{
  *(v1 + 16) = v5;
  v6 = (v2 ^ 0x73FF77FFBDFD7E3FLL) + ((2 * v2) & 0x17BFAFC7ELL) - 0x73FF77FF1632FEBALL + ((a1 + 774) | 0xEu);
  return (*(v4 + 8 * ((122 * (((v6 - v3) | (v3 - v6)) >= 0)) ^ a1)))();
}

uint64_t sub_1002FBDFC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = v3 < v2;
  *(v6 + a1 - 0x25CF7A68AA4F62ACLL) = *(v5 + *v8 - 0x2F6D7194C3C62179) - ((2 * *(v5 + *v8 - 0x2F6D7194C3C62179)) & 0x92) - 55;
  if (v10 == v7 - 0x299EB4F907F27F5BLL < v2)
  {
    v10 = v7 - 0x299EB4F907F27F5BLL < v3;
  }

  return (*(v9 + 8 * ((!v10 * v4) ^ a2)))();
}

uint64_t sub_1002FBEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v14 = (*(v13 + 8 * (v12 ^ 0xD36)))((*(v10 + 24) - a10) ^ 0x17B5BA7Du, 0x100004077774924);
  *(v11 + 24) = v14;
  return (*(v13 + 8 * (((v14 != 0) * (((v12 + 1952202928) & 0x8BA3BEEF) - 1244)) ^ v12)))();
}

uint64_t sub_1002FBFF4(uint64_t a1)
{
  v10 = *(v5 + *(v8 + 32) - 0x2A548663A5750AA6);
  *(v6 + a1 - 0x4532EA2DE7C824A6) = v10 - ((2 * v10) & 0x92) - 55;
  v11 = v7 - 0x64D46E9D66C1C1B0;
  v12 = (v3 < v2) ^ (v11 < v2);
  v13 = v11 < v3;
  if (v12)
  {
    v13 = v3 < v2;
  }

  return (*(v9 + 8 * ((!v13 * v4) ^ v1)))();
}

void sub_1002FC0A0(uint64_t a1@<X8>)
{
  *(v2 + 120) = a1;
  *(v2 + 96) = (*(v2 + 96) & 0xFFFFFFFB ^ 0x7962086E) + 2036467818 + ((2 * ((*(v2 + 96) & 0xFFFFFFFB ^ 0x7962086E) & 0x7962086B ^ ((14 * (v1 ^ 0x1E4) + 2147483478) | *(v2 + 96)))) ^ 0xB) + 5;
  *v2 = 1714769701;
  *(v2 + 4) = 1147077104;
  *v3 = v2;
}

void sub_1002FC78C(uint64_t a1)
{
  v1 = 1686848693 * ((a1 + 1236239903 - 2 * (a1 & 0x49AF861F)) ^ 0xD7C20003);
  v2 = *(a1 + 24) + v1;
  v3 = ((*(a1 + 28) + v1) & 0xFFFFFFF0 ^ 0xF1141AF0) + 16;
  v4 = *(&off_100C005A0 + ((((*(&off_100C005A0 + (v2 ^ 0xB43)))(((2 * v3) & 0xFCFEFFE0) + (v3 ^ 0x7E7F7FFF) - 2122285055, 0x100004077774924) == 0) * (v2 ^ 0x348)) ^ v2));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002FC924@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (a2 + v5 + 803);
  *(a1 + v9) = *(v2 + (v9 & ((v6 - 362) - 426))) ^ *(v3 + (v9 & ((v6 - 362) - 426)) + 2) ^ *(v4 + (v9 & ((v6 - 362) - 426)) + 2) ^ (-127 * ((a2 + v5 + 35) & (v6 - 20))) ^ 0x80;
  v10 = v5 - 859791627 < (v7 + 1851281610);
  if ((v7 + 1851281610) < 0xECD7D0C9 != (v5 - 859791627) < 0xECD7D0C9)
  {
    v10 = (v7 + 1851281610) < 0xECD7D0C9;
  }

  return (*(v8 + 8 * (((4 * !v10) | (8 * !v10)) ^ v6)))();
}

uint64_t sub_1002FC9C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W8>)
{
  v12 = a2 < v9;
  v13 = (v8 ^ (v10 + 90)) + v6;
  v14 = ((a3 + v6 + 36) & 0xF) + 2;
  *(a1 + (a3 + v6 + 804)) = *(v4 + v14) ^ *(v3 + ((a3 + v6 + 804) & 0xFLL)) ^ *(v5 + v14) ^ (-127 * ((a3 + v6 + 36) & 0xF));
  v15 = v12 ^ (v13 < v9);
  v16 = v13 < a2;
  if (!v15)
  {
    v12 = v16;
  }

  return (*(v11 + 8 * ((4 * !v12) | (8 * !v12) | v7)))();
}

uint64_t sub_1002FCB00(_BYTE *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  HIDWORD(a39) = v54;
  v58 = byte_100A0E6E0[v57[2] ^ 0xA5];
  v59 = byte_1009E9F10[v57[3] ^ 0xCALL];
  v60 = v58 ^ 0xB2 ^ ((v58 >> 4) & 2 | 5);
  v61 = (((v60 - ((2 * v60) & 0xD8)) << 8) + 86469632) ^ 0x5276C00;
  v62 = byte_1009F19D0[v57[1] ^ 0xBELL] ^ 0x8B;
  v63 = (((v62 - ((2 * v62) & 0xD2)) << 16) - 1603731456) ^ 0xA0690000;
  HIDWORD(v64) = v59 ^ 2;
  LODWORD(v64) = (v59 ^ 0xFFFFFFDF) << 24;
  v65 = (v64 >> 27) - ((2 * (v64 >> 27)) & 0xFFFFFFC3) - 31;
  v66 = (v63 - ((2 * v63) & 0x1DD00000) + 250146018) ^ 0xEE8ECE2 | (v61 - ((2 * v61) & 0x5510AE00) + 713578384) ^ 0x2A885790;
  v67 = v57[13];
  v68 = (v66 - ((2 * v66) & 0x983F2C8C) - 870345146) ^ 0xCC1F9646 | ((~(2 * (v65 ^ 0xD9 ^ (v65 >> 2) & 0x39)) | 0xFFFFFFD1) + (v65 ^ 0xD9 ^ (v65 >> 2) & 0x39) + 1850610968) ^ 0x6E4E1517;
  v69 = v68 - ((2 * v68) & 0xE2CD6D9C);
  v70 = v67 ^ 0xEFFFE7F3FF3F249ELL;
  v71 = (2 * (v67 ^ 0x21)) & 0x14ELL;
  v72 = 2 * ((v67 & 0xFFFFFFFFFFFFFFF1 ^ 0x31) - ((2 * (v67 & 0xFFFFFFFFFFFFFFF1 ^ 0x31)) & 0x3E)) - 0x6F9273F7747961CALL;
  v73 = v70 + v71 + 0x1000180C00C0DC4BLL + (((v72 ^ 0x906D8C088B869E36) - 2 * ((v72 ^ 0x906D8C088B869E36) & 0x4819478566E17E7CLL ^ v72 & 8) + 0x4819478566E17E74) ^ 0xB7E6B87A991E818BLL);
  v74 = byte_100A0E6E0[v57[14] ^ 0x32];
  LODWORD(v70) = ((((v74 ^ 0xA ^ ((v74 >> 4) & 2 | 0x59)) - ((2 * (v74 ^ 0xA ^ ((v74 >> 4) & 2 | 0x59))) & 0x11E)) << 8) - 777416960) ^ 0xD1A98F00;
  LODWORD(v73) = byte_1009F19D0[(v73 - ((2 * v73) & 0x20A6CB28) + 2421384596u) ^ 0x90536594] ^ 0x62;
  LODWORD(v73) = (((v73 - ((2 * v73) & 0x104)) << 16) + 1837236224) ^ 0x6D820000;
  LODWORD(v73) = (v70 - ((2 * v70) & 0x6799AE00) + 869062441) ^ 0x33CCD729 | (v73 - ((2 * v73) & 0x4EE80000) - 1485531506) ^ 0xA774968E;
  v75 = byte_100A06D00[v57[12] ^ 0xF6];
  v76 = byte_100A06D00[*v57 ^ 0xEDLL];
  v77 = -7 * v76 + ((14 * v76 + 73) | 0x21);
  v78 = -7 * v75 - ((-14 * v75 - 74) & 0xFFFFFF88) + 31;
  v79 = v57[15];
  LODWORD(v70) = v78 ^ (v78 >> 4) ^ ((v78 >> 7) & 1 | 0x86) ^ 0x55;
  LODWORD(v70) = (((v70 - ((2 * v70) & 0x78)) << 24) + 1006632960) ^ 0x3C000000;
  LODWORD(v73) = (v70 - ((2 * v70) & 0x66666666) - 1281543962) ^ 0xB39D30E6 | (v73 - ((2 * v73) & 0x1AC5AC0) - 1059705504) ^ 0xC0D62D60;
  LODWORD(v70) = ((2 * (v79 ^ 0xFFFFFFBF)) & 0x1AC) + (v79 ^ 0x7FBFB761);
  v80 = (v79 ^ 0x920900D7) - ((2 * (v79 ^ 0xFFFFFF87)) & 0x152) + v70 + 1;
  LODWORD(v70) = byte_1009E9F10[v70 - 2143270870 + ((v80 - ((2 * v80 + 1550749606) & 0x573E9A74) - 1713990387) ^ 0x5460B2C6)];
  v81 = (v77 + 75) ^ ((v77 + 75) >> 7) ^ ((v77 + 75) >> 4);
  v82 = ((((v81 ^ 0x9B) - ((2 * v81) & 0x88888888)) << 24) - 1006632960) ^ 0xC4000000;
  HIDWORD(v64) = v70 ^ 2;
  LODWORD(v64) = (v70 ^ 0xFFFFFFDF) << 24;
  LODWORD(v70) = (v64 >> 27) - 32 * ((v64 >> 27) >> 4) + 112;
  LODWORD(v72) = (v82 - ((2 * v82) & 0xEC000000) - 167352717) ^ 0xF6066673 | (v69 + 1902556878) ^ 0x7166B6CE;
  v83 = v72 - ((2 * v72) & 0x38EED744) + 477588386;
  LODWORD(a37) = (v70 ^ 0xBC ^ (v70 >> 2) & 0x39) - ((2 * (v70 ^ 0xBC ^ (v70 >> 2) & 0x39)) & 0x150) + 1633440936;
  LODWORD(v72) = (v73 - ((2 * v73) & 0xAAA6D2A) - 2058013035) ^ 0x85553695 | a37 ^ 0x615C54A8;
  HIDWORD(a32) = v72 - ((2 * v72) & 0x20CA88D2) - 1872411543;
  HIDWORD(a25) = v83;
  HIDWORD(a33) = ((2 * v83) & 0xFBD5B6F4 ^ 0x38C496C0) + (v83 ^ 0xE19DB01A);
  v84 = a2 ^ a3;
  HIDWORD(a29) = a2 ^ a3;
  if ((a2 ^ a3) <= 1)
  {
    v84 = 1;
  }

  v85 = v84 - 1;
  v86 = *a1;
  v87 = (((((a54 - 75) ^ 0x56) - 84) | 0x8B) - 69) ^ 0xBA;
  *a1 = v86 + ~(-11 * v87) - 22 * v87 - 3;
  v88 = 1978540753 * ((v86 ^ 0xF9EBFBEB) - 2048280086 + ((2 * v86) & 0x1D6)) + 427408935;
  v89 = v88 ^ 0x42B51E5A ^ (v88 % 0x101 + 1119166042 - ((2 * (v88 % 0x101)) & 0xB4));
  v90 = ((v89 + 397823353 - ((2 * v89) & 0x2F6C9AF2)) ^ 0x17B64D79) - 1398965027;
  v91 = (v90 - 1804957041 - ((2 * v90) & 0x28D5151E)) ^ 0xB9571047;
  v92 = ((v91 + 423884279 - ((2 * v91) & 0x3287EBEE)) ^ 0x1943F5F7) + 1504626158;
  v93 = ((2 * v92) & 0xF975FF7E) + (v92 ^ 0xFCBAFFBF);
  v94 = v93 + 203691999 - ((2 * (v93 + 203691999) + 109707396) & 0xE7C7E580) + 1999172354;
  v95 = ((2 * (v94 ^ 0xAC9D7CDD)) & 0x3F9FFFDE ^ 0x2787E580) + (v94 ^ 0x40B171F2);
  v96 = ((2 * ((v94 ^ 0x73E3F2C0) + 759012040)) & 0xF25EFFEE) + (((v94 ^ 0x73E3F2C0) + 759012040) ^ 0xF92F7FF7);
  HIDWORD(v97) = v94 ^ 0x13E3F2C0;
  LODWORD(v97) = v94 ^ 0x60000000;
  v98 = ((2 * (v97 >> 29)) & 0xEEFF1F30) + ((v97 >> 29) ^ 0xF77F8F98) - v95;
  v99 = (v96 + 114327561) ^ 0x1E0230A9 ^ (v98 - ((2 * v98 + 278978734) & 0x3C046152) - 967663360);
  v100 = ((v99 - 325725342 - ((2 * v99) & 0xD92BA6C4)) ^ 0xEC95D362) + 727968163;
  v101 = (v100 ^ 0xFDFDB6FB) + v93 + ((2 * v100) & 0xFBFB6DF6) - 1284839708;
  HIDWORD(a26) = a37 ^ 0x615C54A8;
  HIDWORD(a31) = HIDWORD(a33) + 2147329696;
  return (*(&off_100C005A0 + ((612 * (v85 == 0)) ^ a54)))(a1, v95 + 1862105947 + v101, v101, 3010127588, 2921592343, 612, 727968163, 1862105947, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, 0xFFFFFFB600000049, a31, a32, a33, a34, a35, a36, a37, v55, a39, v56, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1002FDBB0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v58 = (v55 - 1625346864) & 0x60E0CFEB;
  v59 = v54 ^ v53 ^ (v56 + v58 + (*(a1 + 3) + 37) - (a5 & (2 * (*(a1 + 3) + 37))) - 873);
  v60 = v59 + v52 - ((v51 + 2 * v59) & a4);
  v61 = v58 + 167;
  v62 = ((((-1845326835 << (((v58 - 89) ^ 0x2A) - 57)) ^ 0x768A990E) - ((2 * ((-1845326835 << (((v58 - 89) ^ 0x2A) - 57)) ^ 0x768A990E)) & 0x4605B5FC) + 587389694) & 0xAD707EEC ^ 0x21005AEC) - 4;
  v63 = ((2 * v62) & 0xD76E1FE8) + (v62 ^ 0xEBB70FF4);
  v64 = *(a51 + v63 + 340324364);
  v65 = a3 - 1167759421 * (((2 * v64) & 0x172) + (v64 ^ 0x7DDFBFB9) + v63);
  v66 = 2 * ((v65 + 1067153010) % 0x101u);
  v67 = (v57 - 1433867176) ^ 0x3A14CF7E ^ ((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587 + v66 - 2 * (((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587 + v66 + 316553490) & 0x3A14CF7F ^ ((((v65 + 1067153010) % 0x101u) ^ 0xDB5DF6FF) - v65 - 769107587) & 1) + 1290995856);
  v68 = (v67 + 1798234400 - ((2 * v67) & 0xD65DC240)) ^ (a2 + 1125050136);
  v69 = (((v68 ^ 0x6B2EE120) + 147332978 - 2 * ((v68 ^ 0x6B2EE120) & 0x8C81F7F ^ v68 & 0xD)) ^ 0x8C81F72) + 663871899;
  v70 = (v60 ^ 0xFC651A43) + (v69 ^ 0x7EAF3F9F) + ((2 * v69) & 0xFD5E7F3E) - 2125414303;
  v71 = v70 - 1135712257 - ((2 * v70) & 0x789CCFFE);
  v72 = v71 ^ v60;
  v73 = ((2 * ((v71 ^ 0xBC4E67FF) + v57 - 1433867176)) & 0xC7DADFB6) + (((v71 ^ 0xBC4E67FF) + v57 - 1433867176) ^ 0xE3ED6FDB);
  v74 = ((2 * ((v71 ^ 0xBC4E67FF) + a2 + 1125050136)) & 0xDED7F6EA) + (((v71 ^ 0xBC4E67FF) + a2 + 1125050136) ^ 0x6F6BFB75) - 1869347701 + ((((16 * v71) ^ 0xC4E67FF0) + 1861780115 - ((2 * ((16 * v71) ^ 0xC4E67FF0)) & 0xDDF10520)) ^ 0x6EF88293);
  v75 = ((v71 >> 28) ^ 0xB) + (v74 ^ 0x1EFFFFFE) + ((2 * v74) & 0x3DFFFFFC) - 520093694;
  v76 = (v75 ^ 0x9D5F5FB5) - v73 + ((2 * v75) & 0x3ABEBF6A);
  v77 = v76 - ((2 * v76 + 219947084) & 0x6A45D0B2) + 2075195519;
  v78 = ((2 * (v72 ^ v77)) & 0xFCF73B3E ^ 0x64A5300C) + (v72 ^ v77 ^ 0x4D2D2599);
  return (*(&off_100C005A0 + (v61 | 0x46)))(a1, v78, (v78 - 1347944449), 2673967061, v61 ^ 0x72Au, (v61 ^ 0x72Au) - 825, 3159255039, 3141880966, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1002FE0F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v46 = 205352207 * v42 - ((((v43 - 431) | 2) + 410704414 * v42 + 1522372976) & 0xF6F57124) - 1462140033;
  v47 = 1752694784 * v42 - ((-789577728 * v42 - 1362100224) & 0xA4400000) + 697297297;
  v48 = (((809171328 * a2 - ((544600832 * a2 + 1068962560) & 0x35A47B00) - 1699887341) ^ 0x9AD23D93) & 0xFFFFFF80 | ((-1402964493 * a2 - ((1489038310 * a2 + 67071526) & 0x99330E84) - 828817835) >> 25)) ^ 0x66;
  v49 = v48 - ((2 * v48) & 0xE9E249FE) - 185522945;
  v50 = ((((2113404928 * a4 + 1855455231) | 0x889FFFFF) + 1090781184 * a4 + 73822021) ^ 0x3BB26F44) & 0xFFFC0000 | ((-555265983 * a4 - ((1036951682 * a4 + 401630298) & 0x3BA0FB0Au) + 1237888946) >> 14);
  v51 = ((2 * v50) & 0xFFF0BDEC ^ 0xAC80) + (v50 ^ 0x7FF829B7);
  v52 = (v49 ^ 0xF4F124FF) - 2146983670 + v51;
  v53 = v52 ^ 0xC73657D9;
  v54 = (2 * v52) & 0x8E6CAFB2;
  v55 = ((2 * ((v47 ^ 0xD227E991) & 0xFFF80000 | (v46 >> 13))) & 0x7027FFEE ^ 0x7B7AA) + (((v47 ^ 0xD227E991) & 0xFFF80000 | (v46 >> 13)) ^ 0x38142422);
  v56 = ((1357107200 * (a3 ^ v45) - ((-1580752896 * (a3 ^ v45)) & 0xDC95A000) + 1850398862) ^ 0x6E4AD88E) & 0xFFFFF000 | ((373624381 * (a3 ^ v45) - ((747248762 * (a3 ^ v45)) & 0x87CEC01E) + 1139236879) >> 20);
  v57 = ((2 * v56) & 0x9D9EDAFE ^ 0x87C) + (v56 ^ 0xCECF6941);
  v58 = v53 + v54 + v57 - 863482724 + v55;
  v59 = -1476395008 * v58 - ((1342177280 * v58 + 0x10000000) & 0x55555555) - 218061590;
  v60 = (1252082677 * v58 - ((-1790801942 * v58 - 892161486) & 0xF354BD88) - 552355875) >> 5;
  v61 = ((-184549376 * v51 - ((-369098752 * v51 + 603979776) & 0xC7FFFFFF) + 1975087080) ^ 0xE3B96FE8 | ((-1336656907 * v51 - ((1621653482 * v51 + 23386404) & 0xDD0AA20E) - 281559655) >> 8)) ^ 0xEE8551;
  v62 = v61 - ((2 * v61) & 0x37A445E0) + 466756336;
  v63 = ((v60 | v59 ^ 0x2B00A4EA) ^ 0x3CD52F6) - ((2 * ((v60 | v59 ^ 0x2B00A4EA) ^ 0x3CD52F6)) & 0xB4A6E560) - 632065360;
  v64 = (((-1342177280 * v55 - ((1610612736 * v55 + 1610612736) & 0xC0000000) + 362984872) ^ 0xE5A2B5A8) & 0xF0000000 | ((2092611067 * v55 - ((-109745162 * v55 - 2048341082) & 0xAE340AE0) - 1710331069) >> 4)) ^ 0x571A057;
  v65 = v64 - ((2 * v64) & 0xAA18585C) + 1426861102;
  v66 = v65 ^ 0x550C2C2E;
  v67 = ((v63 ^ v62 ^ 0xC1815040) & (v65 ^ 0x550C2C2E)) - ((2 * ((v63 ^ v62 ^ 0xC1815040) & (v65 ^ 0x550C2C2E))) & 0x625D3C12);
  v68 = ((-2105010920 * v57 - ((84945456 * v57 - 566975952) & 0xFBCDBE10) - 318689243) ^ 0xFDE6DF0D) & 0xFFFFFFF8 | ((1884357283 * v57 - ((-526252730 * v57 - 70871994) & 0x8413388E) + 1072490090) >> 29);
  v69 = (v68 ^ 6) - ((2 * v68) & 0xAB092882) + 1434752065;
  v70 = ((((2 * v67 + 1650277394) ^ 0x625D3C12) - ((2 * ((2 * v67 + 1650277394) ^ 0x625D3C12)) & 0x5F1F214) + 49871114) ^ 0x2F8F90A) + (v65 ^ 0x948D7C6E ^ v63 ^ v62);
  v71 = v69 ^ 0x55849441;
  v72 = -1390970167 * (v69 ^ 0x55849441) - ((1513026962 * (v69 ^ 0x55849441)) & 0x9B0FE8F4) + 1300755578;
  v73 = (v70 - ((2 * v70) & 0xCFAB3480) - 405431744) ^ v69;
  v74 = ((2 * v73) & 0xF9EDFAEA ^ 0x60A01802) + (v73 ^ 0xCEA7F374);
  v75 = (1437658798 * v74 - ((727833948 * v74 + 773449972) & 0x2D1930C4)) & 0xFFFFFFFE | ((((1437658798 * v74 + 1460466810) & 0xC16EB1E4) + 1428654249 * v74 - 205378352) >> 31);
  v76 = ((((~(196485120 * v66) | 0xDA0B5FFF) + 635113472 * v66 - 1829088077) ^ 0x92FA54B2) & 0xFFFFF000 | ((-1421713999 * v66 - ((1451539298 * v66) & 0xB4EE7922) - 629719919) >> 20)) ^ 0xDA7;
  HIDWORD(v77) = v60 ^ 2;
  LODWORD(v77) = ((1902826330 * (v63 ^ 0xDA5372B0)) & 0xF6DEBF7E) + ((-1196070483 * (v63 ^ 0xDA5372B0)) ^ 0x7B6F5FBF) - 2070896575;
  v78 = ((2 * (v77 >> 2)) & 0xFFDF79FC) + ((v77 >> 2) ^ 0x7FEFBCFE);
  v79 = ((-1304428544 * v71 - ((1686110208 * v71) & 0xFE000000) + 2134267974) ^ 0x7F365846) & 0xFFC00000 | (v72 >> 10);
  v80 = ((2 * v79) & 0xEAFD637C ^ 0x244378) + (v79 ^ 0xF56DD043);
  v81 = ((2 * (v75 + 1838779612)) & 0xFEF7D76E ^ 0x2C111044) + ((v75 + 1838779612) ^ 0xE9F773D5);
  v82 = ((1207959552 * v78 - ((-1879048192 * v78 + 0x20000000) & 0xAAAAAAAA) + 1717666200) ^ 0xD6618198 | ((-778797056 * v78 - ((-1557594112 * v78 + 22151168) & 0xE13A0000) - 247064022) >> 20)) ^ 0x709;
  v83 = v82 - ((2 * v82) & 0x268AC602) - 1824169215;
  v84 = v83 ^ 0x93456301 | ((1392878377 * v78 - ((-1509210542 * v78 - 1533148508) & 0xD586EC38) + 1024620398) >> 17 << 12) ^ 0x3561000;
  v85 = v84 - 2 * (v84 & 0xEDC889C ^ v83 & 4) - 1898149736;
  HIDWORD(v77) = v85 ^ 0xBA9;
  LODWORD(v77) = v85 ^ 0x6347C000;
  v86 = (v77 >> 12) - ((2 * (v77 >> 12)) & 0x305D13E8) - 1741780492;
  v87 = ((v76 - ((2 * v76) & 0xB3329F12) + 1503219593) ^ 0x59994F89) - (v78 + v80) - v81 + 1961515635;
  v88 = ((1287521792 * v81 - ((-1719923712 * v81 - 1521521664) & 0xB49B1000) + 754269758) ^ 0x5A4D883E) & 0xFFFFFE00 | ((1134976771 * v81 - ((122469894 * v81 + 114468790) & 0x691F942) - 894283652) >> 23);
  v89 = (v88 ^ 0x106) - ((2 * v88) & 0xBA9385E2) + 1565115121;
  v90 = ((2 * v86) & 0xDE3F5AEE ^ 0x56200080) + (v86 ^ 0xC42FFD37);
  v91 = (((1649746176 * v80 - ((-995474944 * v80 - 704576512) & 0xC9BEFC00) + 1340080274) ^ 0x64DF7E92) & 0xFFFFFF00 | ((1633834273 * v80 - ((-1027298750 * v80 - 2116681468) & 0xDCE50DB2) + 794658651) >> 24)) ^ 0xEE;
  v92 = (((-868220928 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) - ((411041792 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) + 2021654528) & 0x5E000000) - 1420365759) ^ 0x2F16F041) & 0xFFC00000 | ((-1098505423 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) - ((2097956450 * (((2 * v87) & 0xE3F3FA7E) + (v87 ^ 0xF1F9FD3F)) + 1629082594) & 0xEC7984A2) + 650751042) >> 10)) ^ 0x3D8F30;
  v93 = v92 - ((2 * v92) & 0xF49A2084) + 2051870786;
  v94 = ((v91 - ((2 * v91) & 0xCBC7E8AC) + 1709438038) ^ 0x65E3F456) - 1864346999 + v90;
  v95 = (((v89 ^ 0x5D49C2F1) - 1837968743) ^ 0xABD6DFFF) + v90 + ((2 * ((v89 ^ 0x5D49C2F1) - 1837968743)) & 0x57ADBFFE);
  v96 = v93 ^ 0x8C5EAAC2 ^ (v95 - ((2 * v95 - 904731372) & 0xEC277500) - 618844918);
  v97 = (v94 ^ 0xCBBFE5CB) + ((2 * v94) & 0x977FCB96) + 876616245 + (v89 ^ 0x5D49C2F1);
  v98 = v93 ^ (v97 - ((2 * v97) & 0xEDA5FC4) - 2022887454);
  v99 = (v96 - ((2 * v96 + 1179526172) & 0x8265C1F2) + 1683616519) ^ v98;
  v100 = ((2 * ((v99 ^ 0xCD7E720E) + (v98 ^ 0xFD203FA0))) & 0xDEFFFDCE) + (((v99 ^ 0xCD7E720E) + (v98 ^ 0xFD203FA0)) ^ 0xEF7FFEE7);
  LODWORD(v278) = v99 ^ 0x5577EE3E;
  v101 = ((2 * ((v93 ^ 0x7A4D1042) - (v99 ^ 0xCD7E720E))) & 0xEFFB4DB6) + (((v93 ^ 0x7A4D1042) - (v99 ^ 0xCD7E720E)) ^ 0x77FDA6DB);
  v102 = -2140037955 * v101 - ((14891386 * v101 + 1657190562) & 0x42CC0FFC) - 758553521;
  v103 = (v102 >> 25) ^ 0x648D81BA;
  HIDWORD(a42) = v100;
  v104 = -615081224 * v100 - 964151381;
  LODWORD(v277) = v99;
  HIDWORD(v77) = v99 ^ 0xE;
  LODWORD(v77) = ((-593246878 * (v99 ^ 0xCD7E720E)) & 0xEB2FCB8A) + ((-296623439 * (v99 ^ 0xCD7E720E)) ^ 0x7597E5C5) - 1972889029;
  v105 = ((2 * (v77 >> 4)) & 0xFBDF7F7E) + ((v77 >> 4) ^ 0xFDEFBFBF);
  LODWORD(a39) = v101;
  if (2 * ((((v102 >> 25) ^ 0x10) - 39 * ((211 * ((v102 >> 25) ^ 0x10)) >> 13)) & 0x1F) + ((((v102 >> 25) ^ 0x10) - 39 * ((211 * ((v102 >> 25) ^ 0x10)) >> 13)) ^ 0x7657FC9F) == 1985477791)
  {
    v106 = (110127367 * ((v102 ^ 0x20000000) >> 25)) >> 32;
    v103 = 39 * ((v106 ^ 0xF7ECE777) + 2 * v106) - ((78 * ((v106 ^ 0xF7ECE777) + 2 * v106) + 1976662462) & 0xC91B0354) - 1619640695;
  }

  HIDWORD(v276) = v99 ^ 0x5577EE3E ^ v89;
  v108 = (((v104 - ((380450288 * v100 + 471872624) & 0x10F03AE0)) ^ 0x8781D73) & 0xFFFFFFF8 | ((2070598495 * v100 - ((-153770306 * v100 + 797181582) & 0x86953A10) + 1527554127) >> 29)) ^ 2;
  v109 = v108 - 2 * (v108 & 0x66F9EEEE ^ v104 & 8) - 419827994;
  v110 = (((HIDWORD(v276) << 30) + 1264459956) ^ 0x8B5E20B4) & 0xC0000000 | ((-1870321173 * (HIDWORD(v276) ^ 0xC5405EC1) - ((554324950 * (HIDWORD(v276) ^ 0xC5405EC1)) & 0x5BDD2AE2) + 770610545) >> 2);
  v111 = ((2 * v110) & 0xFBA94AF8 ^ 0x12A14AB8) + (v110 ^ 0xF6AF0020);
  v107 = 953048704 * v101 - ((295484672 * v101 + 56381696) & 0x155AA000) + 1012627587;
  v112 = (v103 ^ 0x648D81AA | v107 ^ 0x8AAD5003) - ((2 * (v103 ^ 0x648D81AA | v107 ^ 0x8AAD5003)) & 0xA811FA2) - 2059366447;
  v113 = (v105 + v111 - ((2 * (v105 + v111) + 142030218) & 0xDAAAEAF2) - 242151362) ^ v109 ^ v112;
  v114 = ((2 * v113) & 0xEFFCEDFE ^ 0xDD8289C) + (v113 ^ 0xF91262B1);
  v115 = 246822219 * v111 - ((493644438 * v111 + 1553051992) & 0x42C88928) + 1336745280;
  v116 = 987288876 * v111 - 2 * ((987288876 * v111 + 421749424) & 0x1EBEE30C ^ (987288876 * v111) & 8) - 673036874;
  v117 = (((-587902640 * v114 - ((971678368 * v114 + 1838301856) & 0x562C41E0) - 1579204025) ^ 0xAB1620F7) & 0xFFFFFFF0 | ((1305433365 * v114 - ((-1684100566 * v114 + 2128159786) & 0xC1C500F0) - 1605430643) >> 28)) ^ 0xE;
  v118 = v117 - ((2 * v117) & 0x1457336C);
  v119 = (((1499352576 * (v109 ^ 0xE6F9EEE6) - ((851221504 * (v109 ^ 0xE6F9EEE6)) & 0x20AC2C00) - 1873406131) ^ 0x9056174D) & 0xFFFFFE00 | ((-567496921 * (v109 ^ 0xE6F9EEE6) - ((475618894 * (v109 ^ 0xE6F9EEE6)) & 0x1BC30EEE) - 1914599561) >> 23)) ^ 0x11B;
  v120 = v119 - ((2 * v119) & 0xA5C7EB34) + 1390671258;
  v121 = v120 ^ 0x52E3F59A;
  v122 = 1633186343 * (v120 ^ 0x52E3F59A) - ((-1028594610 * (v120 ^ 0x52E3F59A)) & 0xC3DDA10A) - 504442747;
  v118 += 170629558;
  HIDWORD(v123) = v103;
  LODWORD(v123) = ((1632740422 * (v112 ^ 0x85408FD1)) & 0x7EFEEF56) + ((-1331113437 * (v112 ^ 0x85408FD1)) ^ 0xBF7F77AB) + 1082165333;
  v124 = ((2 * (v123 >> 1)) & 0xF5FBBFFE) + ((v123 >> 1) ^ 0xFAFDDFFF);
  v125 = 893175897 * v124 - ((1786351794 * v124 + 938725554) & 0x6EF48D9A) + 1400123174;
  v126 = -2054160384 * v124 - ((186646528 * v124 + 186646528) & 0x94E00000) + 1343057134;
  v127 = ((v116 ^ 0x1EBEE306 | (v115 >> 30)) - 2 * ((v116 ^ 0x1EBEE306 | (v115 >> 30)) & 0x5EF6EF39 ^ v116 & 0x18) - 554242271) ^ 0xDEF6EF21 ^ (v124 + 84025345);
  v128 = (v127 - ((2 * v127) & 0x74BDABA4) + 979293650) ^ v120 ^ v118;
  v129 = ((2 * v128) & 0xB35973EA ^ 0x810973E8) + (v128 ^ 0x3B3A000B);
  v130 = ((v126 ^ 0xCA7D6CEE) & 0xFFF00000 | (v125 >> 12)) ^ 0x377A4;
  v131 = v130 - ((2 * v130) & 0x327806EC) + 423363446;
  v132 = 327155712 * v121 - ((654311424 * v121) & 0x8B000000) + 1170902077;
  v133 = ((2 * ((v132 ^ 0x45CA8C3D) & 0xFF800000 | (v122 >> 9))) & 0xEFEFEFFA ^ 0xE1EED0) + (((v132 ^ 0x45CA8C3D) & 0xFF800000 | (v122 >> 9)) ^ 0x77870095);
  v134 = (((-1263501312 * v129 - ((1767964672 * v129 + 220921856) & 0xCD4F0000) + 1832737914) ^ 0xE6A7DC7A) & 0xFFFF8000 | ((1157327201 * v129 - ((32953026 * v129 + 69343830) & 0x60E2B42) - 921165108) >> 17)) ^ 0x183;
  v135 = v134 - ((2 * v134) & 0xB0675DF8) - 667701508;
  v136 = ((((~(906428416 * (v118 ^ 0xA2B99B6)) | 0xB537FFFF) + 453214208 * (v118 ^ 0xA2B99B6) + 627313451) | 1) ^ 0x25640B2B) & 0xFFFF8000 | ((1762539015 * (v118 ^ 0xA2B99B6) - ((303852558 * (v118 ^ 0xA2B99B6)) & 0x22E7E2B6) + 292811099) >> 17);
  v137 = ((2 * v136) & 0xC6F2BEDE ^ 0x1052) + (v136 ^ 0x637957D6);
  v138 = v133 - 2012739581 + (((v131 ^ 0x193C0376) + 1668896726 - v137 + 1945 - ((2 * ((v131 ^ 0x193C0376) + 1668896726 - v137 + 1945)) & 0xC4248DBE) - 502118689) ^ v135 ^ 0x3A21E823);
  v139 = ((2 * v138) & 0xFED789BA) + (v138 ^ 0xFF6BC4DD);
  v140 = 930934653 * (v135 ^ 0xD833AEFC) - ((1861869306 * (v135 ^ 0xD833AEFC)) & 0xF2836890) - 113134520;
  v141 = (((2097152000 * (v135 ^ 0xD833AEFC) - ((2046820352 * (v135 ^ 0xD833AEFC)) & 0x60000000) - 1327765685) ^ 0xB0DBE74B) & 0xFF000000 | (v140 >> 8)) ^ 0xF941B4;
  v142 = v141 - 2 * (v141 & 0x65F46676 ^ (v140 >> 8) & 2) - 436967820;
  v143 = (((1035593984 * v137 - ((2071187968 * v137 + 1004139008) & 0x80B9BC00) + 1581897578) ^ 0x405CDE6A) & 0xFFFFFF00 | ((((1099205678 * v137 + 1539581453) | 0x9D558F5B) + 1597880809 * v137 - 2089605812) >> 24)) ^ 0xB1;
  v144 = v143 - ((2 * v143) & 0xA6DEFE96) + 1399816011;
  v145 = (((-136252416 * v133 - ((801236992 * v133 + 512079872) & 0x24956000) + 562924788) ^ 0x924AB0F4) & 0xFFFFFC00 | ((-377620419 * v133 - ((1392242810 * v133 + 742891886) & 0x677B1958) + 165764451) >> 22)) ^ 0xCE;
  v146 = (v144 ^ 0x536F7F4B) + ((v145 - ((2 * v145) & 0x31F02314) + 418910602) ^ 0x18F8118A);
  v147 = (((-1492173568 * v139 - ((1310620160 * v139 + 1011396096) & 0xEC25B600) - 1808321801) ^ 0xF612DBF7) & 0xFFFFFF00 | ((-1364783299 * v139 - ((1565400698 * v139 + 1631340718) & 0xEEBA7C42) - 1476697480) >> 24)) ^ 0x77;
  v148 = v147 - ((2 * v147) & 0x7F1D34AA) - 1081173419;
  v149 = ((-1443204679 * (v144 ^ 0xB69B193F ^ v142)) ^ 0x7E53DEFD) + ((1408557938 * (v144 ^ 0xB69B193F ^ v142)) & 0xFCA7BDFA);
  v142 ^= 0xE5F46674;
  v150 = (v146 ^ 0xF3FDFEF1) + ((2 * v146) & 0xE7FBFDE2) + (((v148 ^ 0xBF8E9A55) + v142) ^ 0xC0482048) - ((2 * ((v148 ^ 0xBF8E9A55) + v142)) & 0x7F6FBF6E) + 1;
  v151 = v149 + v150 - ((2 * (v149 + v150) - 2093813514) & 0xD1281016) + 707625094;
  v152 = (2 * (((v151 ^ 0x6894080B) & (v148 ^ 0xBF8E9A55)) - ((2 * ((v151 ^ 0x6894080B) & (v148 ^ 0xBF8E9A55))) & 0x28484B1C)) + 675826460) ^ 0x28484B1C;
  v153 = ((v152 - ((2 * v152) & 0x410D0E18) - 1601796340) ^ 0xA086870C) + (v148 ^ 0xD71A925E ^ v151);
  v154 = v153 - ((2 * v153) & 0x1DE25F9E) + 250687439;
  v280 = ((2 * (v150 + 1270472902 + (v154 ^ 0x1171570E))) & 0xEBFA4BFC) + ((v150 + 1270472902 + (v154 ^ 0x1171570E)) ^ 0x75FD25FE);
  v155 = (v154 ^ 0x1171570E) + v142 - ((2 * ((v154 ^ 0x1171570E) + v142)) & 0x963FF92E) + 1260387479;
  HIDWORD(a33) = v154;
  v156 = v154 ^ v148;
  v157 = (((285212672 * (v154 ^ 0x1171570E) - ((570425344 * (v154 ^ 0x1171570E)) & 0x68000000) + 883045376) ^ 0x34A23400) & 0xFF000000 | ((503783441 * (v154 ^ 0x1171570E) - ((1007566882 * (v154 ^ 0x1171570E)) & 0xF3AAD2A0) + 2044029264) >> 8)) ^ 0x79D569;
  v158 = v157 - ((2 * v157) & 0x46E36796);
  LODWORD(a29) = v156;
  HIDWORD(v123) = v155 ^ 0xFFFFFFF7;
  LODWORD(v123) = ((1075558978 * (v155 ^ 0x4B1FFC97)) & 0xFFEABFFE) + ((537779489 * (v155 ^ 0x4B1FFC97)) ^ 0x7FF55FFF) - 2146787327;
  v159 = ((2 * (v123 >> 5)) & 0xECDBD3F8) + ((v123 >> 5) ^ 0x766DE9FC);
  v160 = ((776293814 * (v156 ^ 0xAEFFCD5B)) & 0x2BFF7EFE) + ((1461888731 * (v156 ^ 0xAEFFCD5B)) ^ 0x95FFBF7F) + 1778401409;
  v161 = ((v160 >> 18) - ((v160 >> 17) & 0x468C) + 846373702) ^ 0x3272A346 | (-1447641088 * (v156 ^ 0xAEFFCD5B) - ((1399685120 * (v156 ^ 0xAEFFCD5B)) & 0xF6CA8000) + 2070233698) ^ 0x7B654262;
  v162 = ((2 * v161) & 0xFFFF7EF6) + (v161 ^ 0x7FFFBF7B);
  v163 = ((v158 - 1552829493) ^ 0xA371B3CB ^ (v159 - 1986914812)) - ((2 * ((v158 - 1552829493) ^ 0xA371B3CB ^ (v159 - 1986914812))) & 0x46D587A4);
  v164 = 1226754819 * v159 - ((-1841457658 * v159 + 1497816088) & 0xFC5FD4A0) + 718493788;
  v165 = ((v163 - 1553284142) ^ 0xA36AC3D2) - v162 + 2147467131;
  v166 = v165 ^ 0x6DDF7CD1;
  v167 = (2 * v165) & 0xDBBEF9A2;
  v168 = ((1315962880 * v280 - ((484442112 * v280 + 968884224) & 0x2A200000) - 1846154029) ^ 0x9515ECD3) & 0xFFF00000 | ((-187120409 * v280 - ((699501006 * v280 + 576225180) & 0x3093CB4E) - 1451874955) >> 12);
  v169 = ((2 * v168) & 0xFFF7EFDE ^ 0x3091C) + (v168 ^ 0xFFFA7371);
  v170 = v169 + v166 + v167 + 1716295599;
  v171 = 1033242112 * v159 - ((2066484224 * v159 + 230174720) & 0x4D478000) + 1837095391;
  v172 = ((1040187392 * v170 - ((1006632960 - (v170 << 26)) & 0x2C000000) - 1266619535) ^ 0x9680EB71) & 0xFE000000 | ((-67654241 * v170 - ((-135308482 * v170 - 1388279778) & 0xA1B7CA4C) + 662448437) >> 7);
  v173 = ((2 * v172) & 0xBFFFFFD8 ^ 0x3436F90) + (v172 ^ 0xDE5E4826);
  v174 = 1716671415 * v169 - ((212117358 * v169 + 165842510) & 0x8C1CD52) + 827469264;
  v175 = -306184192 * v169 - ((-612368384 * v169 - 1820327936) & 0xFCFFFFFF) + 1211050390;
  v176 = ((v171 ^ 0x26A3C1DF) & 0xFFFFFE00 | (v164 >> 23)) ^ 0x1FC;
  v177 = v176 - 2 * (v176 & 0x196E933F ^ (v164 >> 23) & 1);
  v178 = ((184549376 * v162 - ((369098752 * v162 + 234881024) & 0x12000000) - 1068052367) ^ 0x956D071) & 0xFF000000 | ((-1237210357 * v162 - ((1820546582 * v162 + 901855598) & 0x76DE7FFC) - 699409227) >> 8);
  v179 = ((2 * v178) & 0x7D3FFD3E ^ 0x36DC3E) + (v178 ^ 0xBEA491A0);
  v180 = ((v177 + 426677054) ^ 0x196E933E) - v173 - 536870932;
  v181 = v180 ^ 0xF8D7BF6A;
  v182 = (2 * v180) & 0xF1AF7ED4;
  v183 = ((2 * (v175 ^ 0x7E6F2996 | (v174 >> 10))) & 0x17FFF776 ^ 0x423072) + ((v175 ^ 0x7E6F2996 | (v174 >> 10)) ^ 0xBDEE382);
  v184 = 558765385 * v183 - ((1117530770 * v183 - 1933459110) & 0xD17580AA) - 1357143806;
  v185 = ((663039520 * v179 - 358311393) | 0x46B95BBF) + 1815963888 * v179;
  v186 = ((-1383617250 * v179 - 782911906) & 0xF6CCD67A) - 1455675023 * v179;
  v187 = ((128974848 * (v183 + v179 + v181 + v182 - 1988948777) - ((257949696 * (v183 + v179 + v181 + v182 - 1988948777) + 283115520) & 0x14600000) - 1028801645) ^ 0x8A3DBB93) & 0xFFF00000 | ((-1350168453 * (v183 + v179 + v181 + v182 - 1988948777) - ((1594630390 * (v183 + v179 + v181 + v182 - 1988948777) - 380778738) & 0xB0EDAEF2) + 1293794048) >> 12);
  v188 = ((2 * v187) & 0xDFAFBBDE ^ 0xB0ADA) + (v187 ^ 0x6FDA5A82);
  v189 = ((-1362308096 * v173 - ((26847232 * v173 + 73728) & 0x234C800) + 689633064) ^ 0x811A6728) & 0xFFFFFC00 | ((-1846824139 * v173 - 2 * ((-1846824139 * v173 + 107610148) & 0x249EC301 ^ (-1846824139 * v173) & 1) - 1425489116) >> 22);
  v190 = ((2 * v189) & 0xBFF3BFFE ^ 0x524) + (v189 ^ 0xDFF9DD6D);
  v191 = (((((v185 + 1733362966) ^ 0xDCA35225) & 0xFFFFFFF0 | ((v186 - 1678853741) >> 28)) - 2 * ((((v185 + 1733362966) ^ 0xDCA35225) & 0x55B4A0F0 | ((v186 - 1678853741) >> 28) & 0x55B4A0FF) ^ ((v186 - 1678853741) >> 28) & 2) - 709582595) ^ 0xD5B4A0FD) + 537272321 + v190;
  v192 = v191 ^ 0xEFDF5BEF;
  v193 = (2 * v191) & 0xDFBEB7DE;
  v194 = ((-2058207232 * v183 - ((178552832 * v183 + 810975232) & 0x32258000) + 1363032472) ^ 0x1912F998) & 0xFFFFC000 | (v184 >> 18);
  v195 = (v194 ^ 0xF2FDD4C5) + 1333719350 + ((2 * v194) & 0xE5FBDDD6 ^ 0x5454);
  v196 = 687250277 * (v188 - 683720936) - 124498115;
  v197 = v195 + v192 + v193 + 2086987704 + v188 - 683720936;
  HIDWORD(v123) = v184 >> 18;
  LODWORD(v123) = -166331077 * v195 + 721599333;
  v198 = ((v196 >> 7) - ((v196 >> 6) & 0x119496C) - 1098079050) ^ 0xBE8CA4B6 | (-905969664 * v188 - ((-1811939328 * v188 - 738197504) & 0xEC000000) + 1642527004) ^ 0xF7E6F91C;
  v199 = ((-989855744 * v190 - ((-1979711488 * v190 - 1979711488) & 0xD2000000) + 779421687) ^ 0x697507F7) & 0xFF000000 | ((-399728699 * v190 - ((5848970 * v190 + 92700554) & 0xB194462) + 1615847926) >> 8);
  v200 = v198 - ((2 * v198) & 0x7D15843E) - 1098202593;
  v201 = (v200 ^ 0xBE8AC21F) + ((2 * v199) & 0xE9E77F3C ^ 0x1031904) + (v199 ^ 0xF476333C);
  v202 = ((2 * (v201 + 185352290)) & 0xFACAFBEC) + ((v201 + 185352290) ^ 0x7D657DF6);
  v203 = (((-1127553072 * v197 - ((160812960 * v197 + 217390496) & 0x8EA9320) - 84944789) ^ 0x475499B) & 0xFFFFFFF0 | ((466398845 * v197 - ((932797690 * v197 - 19967526) & 0xA4FC0578) + 1374006185) >> 28)) ^ 0xD;
  v204 = v201 + ((v123 >> 1) ^ 0xFB6DACFE) + ((2 * (v123 >> 1)) & 0xF6DB59FC) + 262050660;
  v205 = v203 - ((2 * v203) & 0x3365F7DC) + 431160302;
  v206 = (v204 - ((2 * v204) & 0xCB0306DA) + 1702986605) ^ v205;
  v207 = ((2 * v206) & 0xFB5575AE ^ 0xF8447106) + (v206 ^ 0x199C254);
  v208 = (((v205 ^ 0x19B2FBEE) + 248800109 * v202 - 1738851262 - ((2 * ((v205 ^ 0x19B2FBEE) + 248800109 * v202 - 1738851262)) & 0x1644AC54) + 186799658) ^ 0x1835475A) - v207;
  v209 = v208 - ((2 * (v208 + 2108340951)) & 0xA6F773BE) + 1361474742;
  v210 = ((2 * ((v205 ^ 0x19B2FBEE) - (v209 ^ 0x8AA2A369))) & 0xFFDFC9FA) + (((v205 ^ 0x19B2FBEE) - (v209 ^ 0x8AA2A369)) ^ 0x7FEFE4FD);
  HIDWORD(a30) = v209;
  HIDWORD(v277) = v209 ^ 0xA65AD0BF;
  HIDWORD(a38) = v200;
  LODWORD(v276) = v209 ^ 0xA65AD0BF ^ v200;
  HIDWORD(v123) = v208 + 2108340951;
  LODWORD(v123) = ((1967511450 * (v209 ^ 0x8AA2A369)) & 0xFFBD7F76) + ((-1163727923 * (v209 ^ 0x8AA2A369)) ^ 0xFFDEBFBB) + 2179141;
  v211 = ((2 * (v123 >> 1)) & 0x7B6DEBCE) + ((v123 >> 1) ^ 0x3DB6F5E7);
  v212 = v196 >= 0x80;
  v213 = (900069355 * v210 - ((1800138710 * v210 + 1099915650) & 0x63C3C0EA) + 1386844470) >> 14;
  v214 = v213 ^ 0x20016;
  if (!v212)
  {
    v214 = 79982;
  }

  v215 = (((v214 & (v213 ^ 0xC787)) - ((2 * (v214 & (v213 ^ 0xC787))) & 0x3095C) - 34241362) ^ 0xFDF584AE) + (v213 & 0x2C791 ^ 0xC781);
  v216 = ((2 * v215) & 0xE6BFFF6) + (v215 ^ 0xA735FFFB);
  v217 = ((1828716544 * (v276 ^ 0x9272B1C9) - ((436207616 * (v276 ^ 0x9272B1C9)) & 0x26000000) - 1820604175) ^ 0x937BC8F1) & 0xFF000000 | ((-102768531 * (v276 ^ 0x9272B1C9) - ((1941946586 * (v276 ^ 0x9272B1C9)) & 0x6D5B6C1A) + 917353997) >> 8);
  v218 = ((2 * v217) & 0xF67F5FAC ^ 0x6D5B2C) + (v217 ^ 0xFB090260);
  HIDWORD(a24) = ((2 * (v207 - 2108340951 + (v209 ^ 0x8AA2A369))) & 0xBFFDFFE6) + ((v207 - 2108340951 + (v209 ^ 0x8AA2A369)) ^ 0x5FFEFFF3);
  v219 = ((2045034496 * HIDWORD(a24) - ((-516194304 - 204898304 * HIDWORD(a24)) & 0xC8290000) - 726508179) ^ 0xE4149D6D) & 0xFFFFC000 | ((-265427053 * HIDWORD(a24) - ((-530854106 * HIDWORD(a24) - 204503826) & 0xE8CEC006) + 1850679930) >> 18);
  v220 = ((2 * v219) & 0x7EBFEAFE ^ 0x2A32) + (v219 ^ 0xBF5FE866);
  LODWORD(a25) = v210;
  v221 = v216 - 542375936 * v210;
  v222 = (v221 + 466485253) ^ (v211 + v218 - ((2 * (v211 + v218) - 1911376762) & 0xFBE7B1C2) + 1157444388);
  v223 = (((v222 ^ 0x7DF3D8E1) - 2 * ((v222 ^ 0x7DF3D8E1) & 0x1927ADCE ^ v222 & 2) + 422030796) ^ 0x1927ADCC) - v220 - 1084230273;
  v224 = -22955227 * v218 - ((2101573194 * v218 + 25724964) & 0x6C10C766) + 1993123781;
  v225 = -651689984 * v218 - ((-1303379968 * v218 + 1092616192) & 0x84000000) - 493678192;
  v226 = ((-7151744 * v220 - ((-14303488 * v220 + 1803239168) & 0x8F4DD400)) & 0xFFFFFF80 | ((-1577114177 * v220 - ((1140738942 * v220 - 522783106) & 0xD947FEC0) + 1561295519) >> 25)) + 2103740800;
  v227 = ((2 * v226) & 0xD77FAFBA ^ 0x874D8428) + (v226 ^ 0x2C193DEB);
  v228 = ((v225 ^ 0xC2031190) & 0xFFF80000 | (v224 >> 13)) ^ 0x1B043;
  v229 = v228 - ((2 * v228) & 0xCAE384E4);
  HIDWORD(v230) = v223;
  LODWORD(v230) = 221006961 * (((2 * v223) & 0x5FEB7F98) + (v223 ^ 0xAFF5BFCC)) + 210093812;
  v231 = ((2 * (v230 >> 1)) & 0x5DFEDF7E) + ((v230 >> 1) ^ 0xAEFF6FBF);
  v232 = -1284025315 * v227 - ((1726916666 * v227 - 211152914) & 0xF4DD8E8C) + 1948503869;
  v233 = -1342701568 * v216 - ((1609564160 * v216 + 1605369856) & 0x6B900000) - 1515862263;
  v234 = 427369617 * v231 - ((854739234 * v231 + 2057810338) & 0x43B69EB6) - 1624299476;
  v235 = 1709478468 * v231 - ((1271473288 * v231 + 1788790408) & 0x6858EEC8) - 1451500887;
  v236 = (v233 ^ 0x35CDC709) & 0xFFF80000 | ((2056869375 * v221 + 1966202542 + ((2 * ((2056869375 * v221 + 2100342267) & 0x780130B3 ^ (2056869375 * v221 + 923795456) & 1)) ^ 0xFFFFFFFD)) >> 13);
  v237 = ((2 * v236) & 0x55FCEA7E ^ 0xC8012) + (v236 ^ 0xAAF9B536);
  v238 = -360472576 * v227 - ((352796672 * v227 + 33406976) & 0x2FD74000) - 1192589058;
  v239 = ((v229 + 1701954162) ^ 0x6571C272) - v227 - v237 - v231 - 977421093;
  v240 = ((2 * v239) & 0x7FCF8F76) + (v239 ^ 0x3FE7C7BB);
  v241 = ((2 * ((v235 ^ 0xB42C7765) & 0xFFFFFFFC | (v234 >> 30))) & 0xFF7A996A) + (((v235 ^ 0xB42C7765) & 0xFFFFFFFC | (v234 >> 30)) ^ 0x7FBD4CB5);
  v242 = ((715603968 * v240 - ((357466112 * v240 + 707297280) & 0x3B240000) - 1297720507) ^ 0x9D921B45) & 0xFFFFC000 | ((248556189 * v240 - ((497112378 * v240 - 997152606) & 0xD03FF714) + 1248350171) >> 18);
  v243 = ((2 * v242) & 0x79FBFBDC ^ 0x700C) + (v242 ^ 0xBCFDC7E9);
  v244 = 1651639615 * v241 - ((82053758 * v241 + 379661546) & 0x24DC5D98) + 2109654337;
  v245 = 1639021033 * v243 - ((-1016925230 * v243 + 1619052740) & 0xFD6BCA0A) + 787892583;
  v246 = ((v238 ^ 0x17EBA8FE) & 0xFFFFE000 | (v232 >> 19)) ^ 0xF4D;
  v247 = ((-521666560 * v237 - ((1104150528 * v237 + 1037041664) & 0x66666666) - 770018198) ^ 0x3332746A | ((-1752048611 * v237 - ((790870074 * v237 - 982046790) & 0xAC1E92CE) - 1194664636) >> 13)) ^ 0x2B07A;
  v248 = ((v247 - ((2 * v247) & 0xBE4E064C) - 551091418) ^ 0xDF270326) - 2143112373 + v241;
  v249 = ((2 * v248) & 0x73F3DFDA) + (v248 ^ 0x39F9EFED) + v243;
  v250 = 1585070080 * v243 - ((-1124827136 * v243 + 842072064) & 0x8F8C0000) + 1625210610;
  v251 = v246 - ((2 * v246) & 0xC9B2A952) + 1691964585;
  v252 = -269970977 * (v251 ^ 0x64D954A9) - ((-539941954 * (v251 ^ 0x64D954A9)) & 0xE6E8C1BA) - 210476835;
  v253 = -393093376 * (v251 ^ 0x64D954A9) - ((-786186752 * (v251 ^ 0x64D954A9)) & 0x8A200000);
  v254 = (v249 - ((2 * v249 + 303047754) & 0xF6B319FC) + 73506595) ^ v251;
  v255 = ((2 * v254) & 0x7E3BFFEE ^ 0x3E01B0AE) + (v254 ^ 0x209D27A0);
  v256 = ((((v244 ^ 0x126E2ECC) << (v244 & 0x18 ^ 8)) - ((2 * ((v244 ^ 0x126E2ECC) << (v244 & 0x18 ^ 8))) & 0xE9A753A0) - 187455024) ^ 0xF4D3A9D0) << ((63 * v241 - ((126 * v241 - 22) & 0x98) + 65) & 0x18 ^ 0x10);
  v257 = ((v250 ^ 0x47C63EF2) & 0xFFFFC000 | (v245 >> 18)) ^ 0x3FAD;
  v258 = (((v253 + 1158676483) ^ 0x45100003) & 0xFFFFFF00 | HIBYTE(v252)) ^ 0xF3;
  v259 = (v256 - ((2 * v256) & 0xBAC69750) - 580695128) ^ 0xDD634BA8 | (v244 >> 8) ^ 0x126E2E;
  v260 = ((2 * v259) & 0xDA7FFFF8) + (v259 ^ 0x6D3FFFFC);
  v261 = ((v258 - ((2 * v258) & 0x761BECE8) - 1156712844) ^ 0xBB0DF674) - v260 + 1832910844;
  v262 = v257 - ((2 * v257) & 0x96F42FE2) + 1266292721;
  v263 = (v262 ^ 0x4B7A17F1) + (v261 ^ 0xBEDFDDFD) + ((2 * v261) & 0x7DBFBBFA) + 1092624899;
  v264 = v263 - ((2 * v263) & 0x71D0D58) - 2087811412;
  v265 = ((2 * ((v262 ^ 0xB485E80E) - 1832910843 + v260)) & 0xDE7EBEF2) + (((v262 ^ 0xB485E80E) - 1832910843 + v260) ^ 0x6F3F5F79);
  v266 = (((539998368 * v255 - ((6254912 * v255 + 1037761344) & 0x299C8A80) - 1279540503) ^ 0x94CE4549) & 0xFFFFFFE0 | ((285310405 * v255 - ((570620810 * v255 - 1041311782) & 0x93B05B08) - 1429235343) >> 27)) ^ 0x19;
  v267 = ((2 * v265 - ((4 * v265 + 16941596) & 0x15C0420) + 36651807) & 0x3152B110 ^ 0xDFFDFFEF) + v265;
  v268 = v267 - ((2 * v267 + 1389621792) & 0x54401C76) + 1401554763;
  v269 = (2 * ((((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0x1BBB4C5C ^ v268) & ((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0xB215C4CB ^ v264)) - ((2 * (((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0x1BBB4C5C ^ v268) & ((v266 - ((2 * v266) & 0x633684CE) + 832258663) ^ 0xB215C4CB ^ v264))) & 0x4483624)) - 2075642332) ^ 0x84483624;
  v270 = ((v269 - ((2 * v269) & 0xDDA96C64) - 288049614) ^ 0xEED4B632) + (v264 ^ 0xA9AE8897 ^ v268);
  HIDWORD(v278) = ((2 * v270) & 0xFF3BFAFE) + (v270 ^ 0xFF9DFD7F) - ((2 * (((2 * v270) & 0xFF3BFAFE) + (v270 ^ 0xFF9DFD7F)) + 79117416) & 0x93559B0) - 554284276;
  v281 = (*(v44 + 8 * (v43 + 564)))(1032);
  return (*(v44 + 8 * ((39 * (v281 == 0)) ^ v43)))(v281, v271, v272, v273, v274, v44, 0, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v276, a24, a25, a26, a27, a28, a29, a30, v277, v278, a33, a34, a35, a36, a1, a38, a39, a40, a41, a42);
}

uint64_t sub_100301548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = ((0x21E966DDu % (v6 - 1553)) ^ 0xCB5FDFBF) + 2 * (0x21E966DDu % (v6 - 1553));
  if (v7 + 882909249 >= 3)
  {
    v8 = 1978345467;
  }

  else
  {
    v8 = 1978345470;
  }

  return (*(a6 + 8 * ((117 * (v8 + v7 == 1095436221)) ^ (v6 - 114))))(141636387, 599282036, 46711345, 1052047427, 2080107929, 3614675250, 1095436221);
}

uint64_t sub_100302FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v48 = v45 + 1549;
  *(v47 - 208) = 0x906249FEB2907B24;
  *(v47 - 200) = 0x798D38F436DABF7FLL;
  *(v47 - 192) = 0x906249FEB2907B24;
  *(v47 - 184) = 0x798D38F436DABF7FLL;
  v50 = a2 != 1622093268 && (a2 & 0xF) == ((v45 + 774) ^ 0x4CB);
  return (*(v46 + 8 * ((11 * v50) ^ v48)))(a1, a2, 1622093268, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_100304B1C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W8>)
{
  v13 = v10 < v8;
  if (v13 == a3 + 1455529988 < v8)
  {
    v13 = a3 + 1455529988 < v10;
  }

  v14 = (a1 + (v7 ^ 0x748C135E8B050469) + a3 + ((a3 < v9) << 32) - 0x748C135EDD186F47);
  v15 = (((a1 + (v7 ^ 0x8B050469) + a3 + 585601209) ^ *(*(v6 + 2816) + (*(v5 + 3336) & v4))) & 0x7FFFFFFF) * a4;
  *v14 ^= byte_1009E51F0[((v7 ^ 0x8B050469) + a3 + 585601209) & 0xF | (16 * (((v15 ^ HIWORD(v15)) * a4) >> 24))] ^ (113 * (v15 ^ BYTE2(v15)));
  return (*(v12 + 8 * ((!v13 * a2) ^ v11)))();
}

uint64_t sub_100304C34@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (a1 + (v6 - 2122285071));
  v10 = *v9;
  LODWORD(v9) = ((v9 ^ *(*(v4 + 2816) + (*(v3 + 3336) & v2))) & 0x7FFFFFFF) * a2;
  v11 = (v9 ^ (v9 >> 16)) * a2;
  **(v7 + 16) = byte_1009EEFE0[v11 >> 24] ^ v10 ^ byte_1009F2920[v11 >> 24] ^ byte_100A055A0[(v11 >> 24) + 5] ^ v11 ^ (-101 * BYTE3(v11));
  return (*(v8 + 8 * (v5 - 365)))();
}

uint64_t sub_100304D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = (((HIDWORD(a32) ^ a25 ^ 0xD5BF2485) - ((2 * (HIDWORD(a32) ^ a25 ^ 0xD5BF2485) + 1071322170) & 0x21213820) - 1870780883) ^ 0x90909C10) + a21;
  v53 = (v52 ^ 0xEBF8FFF) - 247435263 + ((2 * v52) & 0x1D7F1FFE);
  v54 = (v53 ^ 0xA1C13AC5) - 2 * ((v53 ^ 0xA1C13AC5) & 0x2EB05E7F ^ v53 & 0x10) - 1364173201;
  v55 = (((v54 ^ 0xAEB05E6F) + v53) ^ 0x5F674B74) + ((2 * ((v54 ^ 0xAEB05E6F) + v53)) & 0xBECE96E8) - 1600605043 + ((((2 * v54) ^ 0x5D60BCDE) - ((2 * ((2 * v54) ^ 0x5D60BCDE)) & 0x42A8A170) - 1588309831) ^ 0x5EABAF46);
  v56 = ((v55 - ((2 * v55) & 0x4AA2858) - 2108353492) ^ 0x7DAAEBD2) + v53;
  v57 = (((v56 - 1744425056 - ((2 * v56) & 0x300C5F40) + 8) | 1) - 8) ^ 0x98062FA0;
  HIDWORD(a50) = 169 * (v51 ^ 0x8D);
  v58 = (((678018117 << (BYTE4(a50) ^ 0x53)) & 0xF7FDBBDE) + 1787804444 - ((678018117 << (BYTE4(a50) ^ 0x53)) & 0xC6FD757E) + 695939017) * ((v57 + 1783587643 + ((2 * (v57 & 0x6A4F633E ^ (v56 | 0xFFFFFFFB))) ^ 0xB) + 1) ^ 0x6A4F633B);
  LOBYTE(v58) = v58 - ((2 * v58) & 0x76) + 59;
  v59 = HIDWORD(a10) ^ a12 ^ 0x407983A6 ^ dword_1009E91E0[(v58 ^ v50) ^ 0xCF];
  v60 = a10 ^ 0x86B70F35 ^ (v59 - 2034823371 - ((2 * v59) & 0xD6E1E6A));
  *(a1 + 4 * (v58 ^ 0x3Bu)) = (v60 - ((2 * v60) & 0x4FE8E574) + 670331578) ^ 0x50076113;
  return (*(&off_100C005A0 + v51))(1111706867, 2074146592, 2625717568, 3338499454, 2080300527, 4160601054, 695939017, 71166582, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a1, a48, a49, a50);
}

uint64_t sub_1003050B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(a21) = -810860798;
  LODWORD(a17) = a26 ^ HIDWORD(a12) ^ HIDWORD(a36);
  v357 = v55 ^ 0xCB60F681;
  v56 = ((a51 + 24) ^ 0x51 ^ (11 * (v55 ^ 0x81))) + (((v55 ^ 0x81) * ((a51 + 77) ^ 9)) & 0x76) + *(a41 + (v55 ^ 0xCB60F681));
  v57 = byte_100A06D00[(v56 - ((2 * v56 - 110) & 0x96) - 108) ^ 0x63];
  v58 = -7 * v57 - ((HIDWORD(a30) - 14 * v57) & 0xFFFFFFCA);
  v59 = (-7 * v57 - ((BYTE4(a30) - 14 * v57) & 0xCA) + 64);
  LODWORD(v356) = v55 & 0xFFFFFFFD ^ 0xCB60F683;
  v60 = v356 + 942870835 + ((2 * (v356 & 0x3833113D ^ (v55 | 0x7FFFFFF3))) ^ 0x1D) + 1;
  v61 = ((v58 + 64) ^ 0xFFFFFFE5) + 25;
  v62 = (50 * v57 - ((36 * v57 + 44) & 0x30) + 47) & 0x32;
  LOBYTE(v60) = ~(11 * (v60 ^ 0x33)) + *(a41 + (v60 ^ 0x38331133u)) + 22 * (v60 ^ 0x33);
  LODWORD(a43) = v55 & 0xFFFFFFF7;
  v63 = ((2 * v55) & 0xFFFFEBEC ^ 0x96C1E910) + (v55 & 0xFFFFFFF7 ^ 0x349F0377);
  v64 = byte_100A0E6E0[(v60 - ((2 * v60 + 10) & 0x20) + 21) ^ 0x43];
  v65 = (v62 ^ 0xFFFFFFCF) + (v61 ^ 0xFFFFFFBA) + ((2 * v61) & 0x74) + 71;
  v66 = v64 & 0xF0;
  v67 = (((v58 + 64) >> 7) & 1 | 0x64) ^ (v59 >> 4) ^ 0x25 ^ (v65 - 2 * (v65 & 0x4F ^ v61 & 1) + 78);
  v68 = ((v67 - ((2 * v67) & 0x74)) << 24) + 973078528;
  LOBYTE(v65) = -11 * v63 - ((-22 * v63 - 44) & 0x9A) - 73;
  v69 = (16 * v64 - ((32 * v64) & 0xC0) - 23) ^ (v64 & 0x20 | 0xC0);
  v70 = (((v66 & 0xFFFFFFF0 | (v69 >> 4)) ^ 0xA0) - 2 * ((v66 & 0x50 | (v69 >> 4) & 0x57) ^ (v69 >> 4) & 6) - 47) ^ 0xD3;
  v71 = (((v70 - ((2 * v70) & 0xAA)) << 8) + 442979584) ^ 0x1A675500;
  LOBYTE(v65) = (((v65 & 0x97 ^ 0xED) - ((2 * (v65 & 0x97 ^ 0xED)) & 0x42) + 33) ^ 0x20) & (((v65 & 0x68 ^ 0xDE) + 92 - ((2 * (v65 & 0x68 ^ 0xDE)) & 0xB8)) ^ 0x5C);
  LOBYTE(v63) = *(a41 + v63 + 2562) - ((v65 - ((2 * v65) & 0x18) - 116) ^ 0x8C);
  v72 = (v71 + 992805824 - ((2 * v71) & 0x765A0600)) ^ 0x3B2D03C0 | ((v68 ^ 0x3A000000) + 69590135 - ((2 * v68) & 0x8000000)) ^ 0x425DC77;
  v73 = v72 - 1473809954 - ((2 * v72) & 0x504EE3BC);
  v74 = byte_100A06D00[(((v63 - ((2 * v63) & 0xAE) - 41) ^ 0xD4) + 4)];
  v75 = -7 * v74 + ((14 * v74 + 9) | 0xFFFFFFE3) - 22;
  v76 = (v55 & 0xFFFFFFFB ^ 0xCB60F685) - 1600766044 + ((2 * ((v55 & 0xFFFFFFFB ^ 0xCB60F685) & 0x20963FA8 ^ (v55 | 0x7FFFFFF7))) ^ 0x19) + 1;
  HIDWORD(v356) = v76 ^ 0xA0963FA4;
  v77 = ((22 * (v76 ^ 0xA4)) & 0x1E) + ((11 * (v76 ^ 0xFFFFFFA4)) ^ 0xF) + *(a41 + (v76 ^ 0xA0963FA4));
  v78 = (v77 + 100);
  v79 = v75 ^ (v75 >> 7) ^ (v75 >> 4) ^ 0x9B;
  v80 = (((v79 - ((2 * v79) & 0xD0)) << 24) + 1744830464) ^ 0x68000000;
  v81 = 2 * v77 - ((4 * v77 - 44) & 0xFFFFFF87) + 45;
  v82 = (v78 | ((v78 < 0x6F) << 8)) + (v81 & 0xB0 ^ 0x10818059) - ((2 * v81) & 0x140);
  v83 = byte_100A06D00[(v82 - ((2 * v82 - 553844960) & 0xC6B9577A) - 757388467) ^ 0xE35CABBFLL];
  v84 = v80 - 711842171 - ((2 * v80) & 0xAA000000);
  v85 = -7 * v83 - ((HIDWORD(a30) - 14 * v83) & 0xFFFFFF9C) - 87;
  v86 = (v55 & 0xFFFFFFF4 ^ 0xCB60F68B) + 1864942129 - ((2 * (v55 & 0xFFFFFFF4 ^ 0xCB60F68B)) & 0xDE518462);
  LODWORD(a37) = v86 ^ 0x6F28C231;
  LOBYTE(v86) = ((11 * (v86 ^ 0x31)) ^ 0x3F) + ((22 * (v86 ^ 0x31)) & 0x7E) + *(a41 + (v86 ^ 0x6F28C231));
  v87 = (v85 >> 4) & 1 ^ (v85 >> 7) & 1;
  v88 = v86 - ((2 * v86 + 10) & 0x1C) + 83;
  v89 = (v85 >> 4) & 0xE;
  if ((v87 & v85) != 0)
  {
    v90 = (v85 ^ 0x4E) - v87 - ((2 * ((v85 ^ 0x4E) - v87)) & 0x30) + 24;
  }

  else
  {
    v90 = v85 ^ ((v85 >> 7) & 1 | 0xFFFFFFC8) ^ ((v85 >> 4) & 1 | 0x54) ^ 0xCA;
  }

  v91 = byte_1009E9F10[v88 ^ 0x5CLL];
  v92 = ((((v89 ^ v90 ^ 0xFE) - ((2 * (v89 ^ v90 ^ 0xFE)) & 0xFFFFFFDF)) << 24) + 1862270976) ^ 0x6F000000;
  HIDWORD(v351) = v92 + 754790961 - ((2 * v92) & 0x58000000);
  LODWORD(v355) = v55 & 0xFFFFFFF9 ^ 0xCB60F687;
  v93 = ((11 * ((v355 - 75 - ((2 * v355) & 0x6A)) ^ 0xB5)) ^ 0xFB) + ((22 * ((v355 - 75 - ((2 * v355) & 0x6A)) ^ 0xB5)) & 0xF7) + *(a41 + ((v355 - 1564612171 - ((2 * v355) & 0x457BD36A)) ^ 0xA2BDE9B5));
  HIDWORD(v94) = v91 ^ 2;
  LODWORD(v94) = (v91 ^ 0xFFFFFFDF) << 24;
  v95 = byte_100A0E6E0[(v93 - ((2 * v93 + 18) & 0xAC) - 33) ^ 0x86];
  v96 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0xFFFFFF87) + 67;
  LODWORD(a35) = v55 & 0xFFFFFFF0 ^ 0xCB60F68F;
  v97 = ((11 * ((a35 - 46 - ((2 * a35) & 0xA4)) ^ 0xD2)) ^ 0x4E) + ((22 * ((a35 - 46 - ((2 * a35) & 0xA4)) ^ 0xD2)) & 0x9C) + *(a41 + ((a35 - 41217070 - ((2 * a35) & 0xFB1627A4)) ^ 0xFD8B13D2));
  v98 = v84 ^ 0xD5922685 | ((v96 ^ 0x53 ^ (v96 >> 2) & 0x39) + 617091380 - ((2 * (v96 ^ 0x53 ^ (v96 >> 2) & 0x39)) & 0x68)) ^ 0x24C81134;
  v99 = v98 - 1922914445 - ((2 * v98) & 0x1AC54EE6);
  v100 = byte_1009E9F10[(v97 - ((2 * v97 + 108) & 0x6E) + 109) ^ 0x88];
  v101 = ((((v95 ^ 0x26 ^ (v95 >> 4) & 2) - ((2 * (v95 ^ 0x26 ^ (v95 >> 4) & 2)) & 0x1F8)) << 8) + 1881275392) ^ 0x7021FC00;
  HIDWORD(v94) = v100 ^ 2;
  LODWORD(v94) = (v100 ^ 0xFFFFFFDF) << 24;
  LODWORD(v351) = v101 - ((2 * v101) & 0x4649800);
  v102 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0x4E);
  HIDWORD(v355) = v55 & 0xFFFFFFF5 ^ 0xCB60F68B;
  v103 = HIDWORD(v355) + 644451115 + ((2 * (HIDWORD(v355) & 0x26698B35 ^ (v55 | 0x7FFFFFEB))) ^ 0x3D) + 1;
  LOBYTE(v103) = ((22 * (v103 ^ 0x2B)) & 0x76) + ((11 * (v103 ^ 0x2B)) ^ 0x3B) + *(a41 + (v103 ^ 0x26698B2Bu)) - 1;
  v104 = byte_100A0E6E0[(v103 - ((2 * v103 - 108) & 0x87) - 115) ^ 0x13];
  v105 = (((v104 >> 4) | 0xDDDDDDDD) ^ v104) & 0x6B ^ 0xFFFFFFDD;
  v106 = v104 & 0x94 ^ 0x8F ^ (v105 - ((2 * v105) & 0x36) - 101);
  v107 = (((v106 - ((2 * v106) & 0xD0)) << 8) + 318203904) ^ 0x12F76800;
  v108 = (v107 + 1367839487 - ((2 * v107) & 0x230F2400)) ^ 0x518792FF | v99 ^ 0x8D62A773;
  v109 = (v55 & 0xFFFFFFFC ^ 0xCB60F683) - 301555190 + ((2 * ((v55 & 0xFFFFFFFC ^ 0xCB60F683) & 0x6E06A21C ^ (v55 | 0x7FFFFFEB))) ^ 0x2D) + 1;
  LODWORD(a32) = v109 ^ 0xEE06A20A;
  LOBYTE(v109) = ((11 * (v109 ^ 0xA)) ^ 0xDF) + ((22 * (v109 ^ 0xA)) & 0xBF) + *(a41 + (v109 ^ 0xEE06A20A));
  v110 = byte_1009E9F10[(v109 - ((2 * v109 + 74) & 0xC3) - 122) ^ 0x28];
  v111 = v108 - 1028660168 - ((2 * v108) & 0x855FC870);
  LODWORD(v354) = -882837879;
  v112 = (v55 & 0xFFFFFFF6 ^ 0xCB60F689) + 920096598 - ((2 * (v55 & 0xFFFFFFF6 ^ 0xCB60F689)) & 0x6DAF1EAC);
  HIDWORD(v94) = v110 ^ 2;
  LODWORD(v94) = (v110 ^ 0xFFFFFFDF) << 24;
  v113 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0xFFFFFFDA) + 109;
  v114 = (v113 ^ 0x6D) - ((2 * (v113 ^ 0x6D)) & 0xF2);
  LODWORD(a29) = v112 ^ 0x36D78F56;
  LOBYTE(v112) = ((11 * (v112 ^ 0x56)) ^ 0x7F) + 22 * (v112 ^ 0x56) + *(a41 + (v112 ^ 0x36D78F56));
  v115 = v73 ^ 0xA82771DE | (((v113 >> 2) & 0x39 ^ 0x19) + 887513580 - ((2 * ((v113 >> 2) & 0x39 ^ 0x19)) & 0xDDDDDDDD)) ^ 0x34E661EC;
  v116 = byte_1009F19D0[(v112 + ((116 - 2 * v112) | 0xBF) - 90) ^ 0x2ELL] ^ 0x72;
  v117 = (((v116 - ((2 * v116) & 0xA6)) << 16) + 173211648) ^ 0xA530000;
  v118 = (v55 & 0xFFFFFFF2 ^ 0xCB60F68D) - 1867622664 - ((2 * (v55 & 0xFFFFFFF2 ^ 0xCB60F68D)) & 0x215CADF0);
  v119 = v117 - ((2 * v117) & 0x9960000) - 993315335;
  HIDWORD(v354) = v118 ^ 0x90AE56F8;
  LOBYTE(v118) = ((11 * (v118 ^ 0xF8)) ^ 0x7F) + 22 * (v118 ^ 0xF8) + *(a41 + (v118 ^ 0x90AE56F8));
  v120 = (((v111 & 0xBE00647C | v119 & 0xA40000) ^ 0x82806438) - 338722506 - ((2 * ((v111 & 0xBE00647C | v119 & 0xA40000) ^ 0x82806438)) & 0x55080068)) ^ 0xEBCF8136 | (((v111 & 0x41009B83 | v119 & 0x5B0000) ^ 0x404B8000) - 955243687 - ((2 * ((v111 & 0x41009B83 | v119 & 0x5B0000) ^ 0x404B8000)) & 0x82200602)) ^ 0xC7102359;
  v111 ^= 0xC2AFE438;
  v121 = v111 - ((v120 - 1645447664 - ((2 * v120) & 0x3BD8EC20)) ^ 0x9DEC7610);
  v122 = (v119 ^ ((v119 ^ 0x3B34CA06) - ((2 * (v119 ^ 0x3B34CA06) + 2) & 0xE4CC3F04) - 228188285) ^ 0x1E2D9DA1 ^ (v121 - ((2 * v121) & 0x51016FB4) + 679524314)) + v111;
  v123 = byte_1009F19D0[(v118 - ((2 * v118 + 10) & 0xC3) + 102) ^ 0xD4] ^ 0x1A;
  v124 = (((v123 - ((2 * v123) & 0x17A)) << 16) + 1589444608) ^ 0x5EBD0000;
  v125 = (v102 + 39) ^ 0x2E ^ ((v102 + 39) >> 2) & 0x39;
  v126 = (v124 + 1684151868 - ((2 * v124) & 0x48C40000)) ^ 0x64621E3C | (v125 - 1652956683 - ((2 * v125) & 0x1EA)) ^ 0x9D79E1F5;
  v127 = v126 - 518155932 - ((2 * v126) & 0x423B22C8);
  v128 = (v55 & 0xFFFFFFFE ^ 0xCB60F681) + 2087556097 + ((2 * ((v55 & 0xFFFFFFFE ^ 0xCB60F681) & 0x7C6D9406 ^ (v55 | 0x7FFFFFF9))) ^ 0xF) + 1;
  LODWORD(v352) = v128 ^ 0x7C6D9401;
  LOBYTE(v119) = ((11 * (v128 | 1)) ^ 0x63) + ((22 * (v128 | 1)) & 0xC7) + *(a41 + (v128 ^ 0x7C6D9401));
  v129 = (v55 & 0xFFFFFFF1 ^ 0xCB60F68F) + 1620641771 + ((2 * ((v55 & 0xFFFFFFF1 ^ 0xCB60F68F) & 0x609907F1 ^ (v55 | 0x7FFFFFEF))) ^ 0x35) + 1;
  HIDWORD(v353) = v129 ^ 0x609907EB;
  LOBYTE(v129) = ((11 * (v129 ^ 0xEB)) ^ 0x3F) + ((22 * (v129 ^ 0xEB)) & 0x7E) + *(a41 + (v129 ^ 0x609907EB));
  v130 = (v55 & 0xFFFFFFF3 ^ 0xCB60F68D) + 1417713652 - ((2 * (v55 & 0xFFFFFFF3 ^ 0xCB60F68D)) & 0xA9012FE8);
  LOBYTE(v117) = v129 - ((2 * v129 + 10) & 0x12);
  v131 = byte_1009F19D0[(v119 - ((2 * v119 + 66) & 0xA4) - 13) ^ 2] ^ 0x28;
  v132 = (((v131 - ((2 * v131) & 0xB2)) << 16) + 2102984704) ^ 0x7D590000;
  v133 = (v132 - 266024838 - ((2 * v132) & 0x60480000)) ^ 0xF024C87A | (v114 - 1482150535) ^ 0x8A323DA8 ^ (v115 - ((2 * v115) & 0x5B3421A2) + 765071569);
  HIDWORD(a26) = v130 ^ 0x548097F4;
  LOBYTE(v114) = ((22 * (((v55 & 0xF3 ^ 0x8D) - 12 - ((2 * (v55 & 0xF3 ^ 0x8D)) & 0xE8)) ^ 0xF4)) & 0x7E) + ((11 * (v130 ^ 0xF4)) ^ 0xBF) + *(a41 + (v130 ^ 0x548097F4)) + 65;
  LODWORD(v353) = v55 & 0xFFFFFFFA ^ 0xCB60F685;
  LOBYTE(v129) = v114 - ((2 * v114) & 0xA2) + 81;
  LOBYTE(v130) = (2 * v129 - ((4 * v129) & 8) + 5) & 8;
  v134 = byte_100A0E6E0[(v117 + 78) ^ 0x6CLL];
  v135 = ((((v134 ^ 0xF7 ^ (v134 >> 4) & 2) - ((2 * (v134 ^ 0xF7 ^ (v134 >> 4) & 2)) & 0x12C)) << 8) + 877499904) ^ 0x344D9600;
  v136 = (v135 - 340489317 - ((2 * v135) & 0x57691600)) ^ 0xEBB48B9B | v127 ^ 0xE11D9164;
  v137 = byte_100A06D00[(v130 + (v129 ^ 0x55) - 2 * ((v130 + (v129 ^ 0x55)) & 0x4F ^ (v129 ^ 0x55) & 3) + 76) ^ 0xD7];
  v138 = -7 * v137 + ((a30 + 14 * v137) | 0xFFFFFFAD) - 123;
  v139 = ((11 * ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xFFFFFFF8)) ^ 0x6B) + ((22 * ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xFFFFFFF8)) & 0xFFFFFFD6) + *(a41 + ((v353 + 209138680 - ((2 * v353) & 0x18EE67F0)) ^ 0xC7733F8u));
  HIDWORD(v352) = v55 & 0xFFFFFFF8 ^ 0xCB60F687;
  v140 = v138 & 0xC6 ^ (v138 >> 4) ^ ((v138 >> 7) & 1 | 0xFE) ^ 0x73 ^ ((v138 & 0x39 ^ 0xFFFFFFEF) - 2 * ((v138 & 0x39 ^ 0xFFFFFFEF) & 0xF) - 113);
  v141 = (((v140 - ((2 * v140) & 0x74)) << 24) - 1174405120) ^ 0xBA000000;
  v142 = v139 - ((2 * v139 + 50) & 0x54) - 61;
  v143 = ((v142 & 0xE ^ 0xFFFFFFF5) - ((2 * v142) & 0x10) - 56) ^ 0x48;
  v144 = (v142 ^ 0x3D792DB3) + ((2 * (v142 ^ 0x44)) & 0x1EE) + (v143 ^ 0x304208) - ((2 * v143) & 0x1EE);
  v145 = (2 * (v144 + 1) - 4 * ((v144 - 1034514431) & 0xC570EED ^ (v144 + 1) & 0x29) - 1654964856) ^ 0x18AE1D88;
  v146 = (v142 ^ 0xFB53BF02) + ((2 * (v142 ^ 0xFFFFFFB5)) & 0x16E) + 78397754 + ((v145 + 876450195 - ((2 * v145) & 0x687B2324)) ^ 0x343D9193);
  v147 = byte_1009F19D0[(v146 + 21258325 - ((2 * v146) & 0x288C0AA)) ^ 0x1446055] ^ 0x5C;
  v148 = (((v147 - ((2 * v147) & 0x19C)) << 16) - 1999765504) ^ 0x88CE0000;
  v149 = (v148 - 343893342 - ((2 * v148) & 0x57000000)) ^ 0xEB809AA2 | HIDWORD(v351) ^ 0x2CFD3231;
  v150 = (v141 + 2003128989 - ((2 * v141) & 0xEE000000)) ^ 0x7765529D | (v136 - 1908346371 - ((2 * v136) & 0x1C81E3FA)) ^ 0x8E40F1FD;
  LOBYTE(v139) = ((11 * ((BYTE4(v352) + 11 - ((2 * BYTE4(v352)) & 0x16)) ^ 0xB)) ^ 0xBF) + ((22 * ((BYTE4(v352) + 11 - ((2 * BYTE4(v352)) & 0x16)) ^ 0xB)) & 0x7E) + *(a41 + ((HIDWORD(v352) + 984372235 - ((2 * HIDWORD(v352)) & 0x7558A816)) ^ 0x3AAC540Bu));
  v151 = byte_1009E9F10[(v139 - ((2 * v139 - 118) & 0xB0) - 99) ^ 0x2DLL];
  HIDWORD(v94) = v151 ^ 2;
  LODWORD(v94) = (v151 ^ 0xFFFFFFDF) << 24;
  v152 = (v94 >> 27) - ((2 * (v94 >> 27)) & 0x5E);
  HIDWORD(v94) = (v122 ^ 0xEAFF77B2) + 352356430 + ((2 * v122) & 0xD5FEEF64);
  LODWORD(v94) = HIDWORD(v94);
  v153 = (v149 + 1608607483 - ((2 * v149) & 0xBFC2CDF6)) ^ 0x5FE166FB;
  v154 = v153 | (v351 + 19657) & 0x7F00 ^ 0x4C00;
  v155 = v154 - 877450494 - 2 * (v154 & 0x4BB32B22 ^ v153 & 0x20);
  v152 -= 81;
  v156 = (((v351 + 19657) & 0x8000) + 1386555650 + (v152 ^ 0xAF) - ((2 * (v152 ^ 0xAF)) & 4)) ^ 0x52A52902;
  v157 = (v156 + 931797404 - ((2 * v156) & 0x6F143338)) ^ 0x378A199C;
  v158 = v157 - (((v155 ^ 0xCBB32B02 | v157) + 212506879 - ((2 * (v155 ^ 0xCBB32B02 | v157)) & 0x195531FE)) ^ 0xCAA98FF);
  v159 = (((4 * HIDWORD(a21)) ^ 0x1BC75334) - ((2 * ((4 * HIDWORD(a21)) ^ 0x1BC75334)) & 0x9800FF48) + 1275101095) ^ ((HIDWORD(a21) >> 30) | 0xECE4C2A4);
  v160 = (v155 ^ ((v155 ^ 0x344CD4FD) - ((2 * (v155 ^ 0x344CD4FD) + 2) & 0x3E5A24D0) + 523047529) ^ 0x61BCEC4F ^ (v158 - ((2 * v158) & 0x6A45AA4A) - 1256008411)) + v157;
  v161 = ((2 * v160) & 0x7F7EEB5E) + (v160 ^ 0xBFBF75AF);
  v162 = ((v152 >> 2) & 0x39 ^ 0x29) - 220457546 - ((2 * ((v152 >> 2) & 0x39 ^ 0x29)) & 0x60);
  v163 = v161 + 1077971537;
  v164 = ((((v161 + 1077971537) ^ v162 ^ 0xF2DC15B6) - 2 * (((v161 + 1077971537) ^ v162 ^ 0xF2DC15B6) & 0x5F5A967F ^ ((v161 + 1077971537) ^ v162) & 8) - 547711369) ^ 0x20A56988) + v161;
  v165 = (v94 >> 30) - ((2 * (v94 >> 30)) & 0xE07639F6) + 1882922235;
  v166 = v159 ^ ~v165;
  v167 = v159 ^ 0xFB257B98 ^ v165;
  v168 = v150 - ((2 * v150) & 0xB8950C28) - 599095788;
  v169 = (v162 ^ 0xD23EA49) - ((2 * (v162 ^ 0xD23EA49) + 2) & 0xF43B778E) - 98714680;
  v170 = (v162 ^ v169 ^ 0x7CA3B2C7 ^ (v164 - ((2 * v164 - 2139024220) & 0xE8C4396C) - 1264408824)) + v163;
  v171 = HIDWORD(a35) ^ a36 ^ HIDWORD(a20);
  v172 = v171 ^ HIDWORD(a32) ^ v168;
  v173 = v171 ^ (((HIDWORD(a31) - 2112389658) ^ 0x36C800E7 ^ (v133 + 919077095 - ((2 * v133) & 0x6D9001CE))) - ((2 * ((HIDWORD(a31) - 2112389658) ^ 0x36C800E7 ^ (v133 + 919077095 - ((2 * v133) & 0x6D9001CE)))) & 0xC584A628) + 1656902420);
  v174 = v171 ^ ((__PAIR64__(v166, v167) >> 2) - ((2 * (__PAIR64__(v166, v167) >> 2)) & 0x1B0296A2) + 226577233);
  v175 = v171 ^ a31 ^ (v170 - ((2 * v170) & 0xDA88FE2E) - 314278121);
  v176 = *(a19 + 4 * (v172 ^ 0x84u)) ^ *(a49 + 4 * (HIBYTE(v173) ^ 0x1C)) ^ *(a53 + 4 * (BYTE1(v174) ^ 0x6Du)) ^ *(a47 + 4 * (BYTE2(v175) ^ 0xC0u));
  v177 = *(a49 + 4 * (HIBYTE(v175) ^ 2)) ^ *(a53 + 4 * (BYTE1(v172) ^ 0x5Bu)) ^ *(a19 + 4 * ((v171 ^ (((BYTE4(a31) - 26) ^ 0xE7 ^ (v133 - 25 - ((2 * v133) & 0xCE))) - ((2 * ((BYTE4(a31) - 26) ^ 0xE7 ^ (v133 - 25 - ((2 * v133) & 0xCE)))) & 0x28) + 20)) ^ 0x16u)) ^ *(a47 + 4 * (BYTE2(v174) ^ 0x77u));
  v178 = *(a53 + 4 * (BYTE1(v175) ^ 0x5Du));
  v179 = *(a47 + 4 * (BYTE2(v172) ^ 0xBAu)) ^ *(a53 + 4 * (((v171 ^ (((WORD2(a31) + 32230) ^ 0xE7 ^ (v133 + 231 - ((2 * v133) & 0x1CE))) - ((2 * ((WORD2(a31) + 32230) ^ 0xE7 ^ (v133 + 231 - ((2 * v133) & 0x1CE)))) & 0xA628) + 21268)) >> 8) ^ 0xDDu)) ^ *(a49 + 4 * (HIBYTE(v174) ^ 0xB1)) ^ *(a19 + 4 * (v175 ^ 0x81u));
  v180 = v178 ^ *(a49 + 4 * (HIBYTE(v172) ^ 0xD3)) ^ *(a19 + 4 * (v174 ^ 0x82u)) ^ *(a47 + 4 * (BYTE2(v173) ^ 0xF8u));
  v181 = *(a19 + 4 * (v180 ^ 0xB1u)) ^ 0x43075F2A;
  v182 = *(a47 + 4 * (BYTE2(v177) ^ 0xEEu)) ^ 0xC3F7EB70 ^ *(a53 + 4 * (BYTE1(v179) ^ 0xAu)) ^ *(a49 + 4 * (HIBYTE(v176) ^ 0x4C));
  v183 = v181 + v182;
  v184 = (v181 & v182) - ((2 * (v181 & v182)) & 0x3B331DDE);
  v185 = ((2 * v184 - 1154277922) ^ 0xBB331DDE) + 1975693405 - 2 * (((2 * v184 - 1154277922) ^ 0xBB331DDE) & 0x75C2B07C ^ (2 * v184 - 1154277922) & 0x20);
  v186 = *(a47 + 4 * (BYTE2(v179) ^ 0x49u)) ^ *(a49 + 4 * (HIBYTE(v177) ^ 0x99)) ^ *(a53 + 4 * (BYTE1(v180) ^ 0x55u)) ^ *(a19 + 4 * (v176 ^ 0x30u));
  v187 = *(a47 + 4 * (BYTE2(v176) ^ 0x2Cu));
  v188 = (v183 ^ 0x5A7F2FFD) + ((2 * v183) & 0xB4FE5FFA) - 1518284796 + (v185 ^ 0x8A3D4FA2);
  v189 = *(a53 + 4 * (BYTE1(v176) ^ 0x19u)) ^ *(a49 + 4 * (HIBYTE(v179) ^ 0x97));
  v190 = *(a53 + 4 * (BYTE1(v177) ^ 0x33u));
  v191 = v188 - ((2 * v188) & 0x1A4B21FA) - 1926917891;
  v192 = v189 ^ *(a47 + 4 * (BYTE2(v180) ^ 0xFEu)) ^ *(a19 + 4 * (v177 ^ 0x57u));
  v193 = v190 ^ v187 ^ *(a49 + 4 * (HIBYTE(v180) ^ 0x9B)) ^ *(a19 + 4 * (v179 ^ 0x10u));
  v194 = ((((v192 ^ 0xC0EA0B49) >> (v169 & 8)) - 134090637 - ((2 * ((v192 ^ 0xC0EA0B49) >> (v169 & 8))) & 0xF003E0E6)) ^ 0xF801F073) >> (v169 & 8 ^ 8);
  v195 = *(a53 + 4 * (BYTE1(v191) ^ 0x16u));
  v196 = *(a53 + 4 * ((v194 - ((2 * v194) & 0x34) - 102) ^ 0x9Au)) ^ *(a47 + 4 * (BYTE2(v186) ^ 0x53u)) ^ *(a19 + 4 * (v193 ^ 0xA2u)) ^ *(a49 + 4 * (HIBYTE(v191) ^ 0xC3));
  v197 = *(a19 + 4 * ((v188 - ((2 * v188) & 0xFA) - 3) ^ 0xA9u));
  v198 = *(a53 + 4 * (BYTE1(v193) ^ 0xEAu)) ^ *(a49 + 4 * (HIBYTE(v186) ^ 0xD7)) ^ *(a47 + 4 * (BYTE2(v192) ^ 0xEAu));
  v199 = *(a47 + 4 * (BYTE2(v191) ^ 0x98u));
  v200 = __PAIR64__(v198 ^ 0xF0B45A ^ v197, v198 ^ ~v197) >> 31;
  HIDWORD(v94) = ~v200;
  LODWORD(v94) = (v200 - ((2 * v200) & 0x14C6BBD8) + 174284268) ^ 0x17C2C136;
  v201 = (v94 >> 1) - ((2 * (v94 >> 1)) & 0x1F08956) + 16270507;
  v202 = *(a49 + 4 * (HIBYTE(v192) ^ 0xC0)) ^ *(a47 + 4 * (BYTE2(v193) ^ 0xE4u)) ^ *(a19 + 4 * (v186 ^ 3u)) ^ v195;
  HIDWORD(v94) = v202 ^ 0x45A;
  LODWORD(v94) = v202 ^ 0x80F0B000;
  v203 = (v94 >> 12) - ((2 * (v94 >> 12)) & 0xCE23070C) + 1729201030;
  v204 = *(a49 + 4 * (HIBYTE(v193) ^ 0xDB)) ^ *(a53 + 4 * (BYTE1(v186) ^ 0xB5u)) ^ *(a19 + 4 * (v192 ^ 0x49u)) ^ v199;
  HIDWORD(v94) = v203 ^ 0xE3BB5;
  LODWORD(v94) = v203 ^ 0xF2C00000;
  v205 = (v94 >> 20) + 1293493467 + (~(2 * (v94 >> 20)) | 0x65CDB64B);
  v206 = *(a47 + 4 * (BYTE2(v201) ^ 0xEEu)) ^ *(a49 + 4 * (HIBYTE(v196) ^ 0x42)) ^ *(a53 + 4 * (BYTE1(v205) ^ 0xA2u)) ^ *(a19 + 4 * (v204 ^ 0x8Du));
  v207 = *(a47 + 4 * (BYTE2(v205) ^ 0x46u)) ^ *(a49 + 4 * (HIBYTE(v201) ^ 0x1B)) ^ *(a53 + 4 * (BYTE1(v204) ^ 0x55u)) ^ *(a19 + 4 * (v196 ^ 0x3Fu));
  v208 = *(a19 + 4 * (v201 ^ 0xFAu)) ^ *(a53 + 4 * (BYTE1(v196) ^ 0xB5u)) ^ *(a47 + 4 * (BYTE2(v204) ^ 0x38u)) ^ *(a49 + 4 * (HIBYTE(v205) ^ 0x63));
  v209 = *(a49 + 4 * (HIBYTE(v204) ^ 0xE)) ^ *(a47 + 4 * (BYTE2(v196) ^ 0x95u)) ^ *(a53 + 4 * (BYTE1(v201) ^ 0x8Au)) ^ *(a19 + 4 * (((v94 >> 20) - 37 + (~(2 * (v94 >> 20)) | 0x4B)) ^ 0xA8u));
  v210 = *(a49 + 4 * (HIBYTE(v206) ^ 0xCC));
  v211 = ((((v209 ^ 0x226F4D3) >> (v210 & 8 ^ 8)) - 1547570049 - ((2 * ((v209 ^ 0x226F4D3) >> (v210 & 8 ^ 8))) & 0x4783E8FE)) ^ 0xA3C1F47F) >> (v210 & 8);
  v212 = *(a49 + 4 * (HIBYTE(v207) ^ 0x59)) ^ *(a47 + 4 * (BYTE2(v208) ^ 0xEEu)) ^ *(a19 + 4 * (v206 ^ 0x17u)) ^ *(a53 + 4 * ((v211 - ((2 * v211) & 0x36) - 101) ^ 0x9Bu));
  v213 = *(a49 + 4 * (HIBYTE(v209) ^ 2));
  v214 = *(a47 + 4 * (BYTE2(v207) ^ 0x32u)) ^ v210 ^ *(a53 + 4 * (BYTE1(v208) ^ 0x15u)) ^ *(a19 + 4 * (v209 ^ 0xD3u));
  v215 = *(a47 + 4 * (BYTE2(v206) ^ 0xF4u));
  v216 = v215 ^ 0xB159A015;
  v217 = v213 ^ ((v213 ^ 0x4CC44355) - ((2 * (v213 ^ 0x4CC44355) + 2) & 0xF866F20A) + 2083748102) ^ ((v215 ^ 0xB159A015) - (v213 ^ 0x2621CBF ^ v215) - ((2 * ((v215 ^ 0xB159A015) - (v213 ^ 0x2621CBF ^ v215))) & 0xC7B54B3C) - 472210018);
  v218 = (v217 ^ 0x2CD26031) + v216 - ((2 * ((v217 ^ 0x2CD26031) + v216)) & 0x5B1477BA) - 1383449635;
  v219 = *(a19 + 4 * (v208 ^ 4u));
  v220 = *(a19 + 4 * (v207 ^ 0x2Bu)) ^ *(a47 + 4 * (BYTE2(v209) ^ 0x26u)) ^ *(a53 + 4 * (BYTE1(v206) ^ 0xAAu)) ^ *(a49 + 4 * (HIBYTE(v208) ^ 0x8C));
  v221 = v219 ^ *(a53 + 4 * (BYTE1(v207) ^ 0xAAu)) ^ v218;
  v222 = *(a49 + 4 * (HIBYTE(v214) ^ 0xFD)) ^ *(a19 + 4 * ((v219 ^ *(a53 + 4 * (BYTE1(v207) ^ 0xAAu)) ^ v218) ^ 0xFu)) ^ *(a53 + 4 * (BYTE1(v220) ^ 0x33u)) ^ *(a47 + 4 * (BYTE2(v212) ^ 0x12u));
  v223 = *(a47 + 4 * (BYTE2(v214) ^ 0xD0u)) ^ *(a49 + 4 * (HIBYTE(v221) ^ 5));
  v224 = *(a53 + 4 * (BYTE1(v212) ^ 0x92u));
  v225 = *(a47 + 4 * (BYTE2(v220) ^ 0xCu)) ^ *(a19 + 4 * (v214 ^ 0xCBu)) ^ *(a53 + 4 * (BYTE1(v221) ^ 0x54u)) ^ *(a49 + 4 * (HIBYTE(v212) ^ 0x24));
  v226 = 2 * (((v224 ^ 0xC195F7CF) & (v223 ^ 0x2621CBF)) + (~(2 * ((v224 ^ 0xC195F7CF) & (v223 ^ 0x2621CBF))) | 0x3054C0FD)) - 810860796;
  v227 = (((v226 ^ 0xCFAB3F02) + 332661601 - ((2 * (v226 ^ 0xCFAB3F02)) & 0x27A806C0)) ^ 0x13D40361) + (v223 ^ 0xC3F7EB70 ^ v224);
  v228 = (((v226 ^ 0xCFAB3F02) + 1074332340 - 2 * ((v226 ^ 0xCFAB3F02) & 0x400902BC ^ v226 & 8)) ^ 0xBFF6FD4B) + (v227 ^ 0xFD7FFFAE) + ((2 * v227) & 0xFAFFFF5C) + 41943123;
  v229 = *(a49 + 4 * (HIBYTE(v220) ^ 0x28)) ^ *(a53 + 4 * (BYTE1(v214) ^ 0x8Cu)) ^ *(a47 + 4 * (BYTE2(v221) ^ 0x32u)) ^ *(a19 + 4 * (v212 ^ 0xBAu));
  v230 = (v228 - ((2 * v228) & 0x1AE93450) - 1921738200) ^ *(a19 + 4 * (v220 ^ 0xE4u));
  v231 = *(a47 + 4 * (BYTE2(v222) ^ 0x7Eu));
  v232 = *(a53 + 4 * (BYTE1(v229) ^ 0x5Eu)) ^ *(a49 + 4 * (HIBYTE(v222) ^ 0xC2)) ^ *(a47 + 4 * (BYTE2(v225) ^ 0x9Cu));
  v233 = *(a53 + 4 * ~(v222 >> 8));
  v234 = HIBYTE(v230) ^ 0xAA;
  v235 = *(a49 + 4 * (HIBYTE(v225) ^ 0x66)) ^ *(a47 + 4 * (BYTE2(v229) ^ 0x60u)) ^ *(a19 + 4 * (v222 ^ 0xA5u)) ^ *(a53 + 4 * (BYTE1(v230) ^ 0xE8u));
  v236 = *(a19 + 4 * (v230 ^ 0x94u));
  v237 = *(a49 + 4 * (HIBYTE(v229) ^ 0xCE)) ^ *(a47 + 4 * (BYTE2(v230) ^ 0xC9u));
  v238 = *(a19 + 4 * (v225 ^ 0x45u)) ^ v233;
  v239 = *(a53 + 4 * (BYTE1(v225) ^ 0xD9u)) ^ v231 ^ *(a19 + 4 * (v229 ^ 0xFBu));
  v240 = v238 ^ v237;
  v241 = v239 ^ *(a49 + 4 * v234);
  v242 = *(a53 + 4 * (((v238 ^ v237) >> 8) ^ 0x3Du));
  v243 = *(a19 + 4 * (v241 ^ 0xFAu));
  v244 = v242 ^ *(a47 + 4 * (BYTE2(v235) ^ 0xE7u));
  v245 = v244 ^ *(a49 + 4 * (((v236 ^ v232) >> 24) ^ 0x3A)) ^ 0xC3F7EB70;
  v246 = (v243 ^ 0x43075F2A) + v245;
  v247 = (2 * (((v243 ^ 0x43075F2A) & v245) + ~((2 * ((v243 ^ 0x43075F2A) & v245)) & 0x67401A3E)) + 1732254272) ^ 0x67401A3E;
  v248 = (v246 ^ 0x3E3AFF6A) - 1044053865 + ((2 * v246) & 0x7C75FED4) + ((v247 - ((2 * v247) & 0xB35E35FC) - 642835713) ^ 0x2650E500);
  v249 = *(a47 + 4 * (BYTE2(v240) ^ 0x77u)) ^ *(a49 + 4 * (HIBYTE(v235) ^ 0xDC)) ^ *(a53 + 4 * (BYTE1(v241) ^ 0x10u));
  v250 = *(a47 + 4 * (BYTE2(v241) ^ 0xCDu)) ^ *(a49 + 4 * (HIBYTE(v240) ^ 0x92));
  v251 = *(a19 + 4 * (v240 ^ 0x6Cu)) ^ *(a53 + 4 * (BYTE1(v235) ^ 0xD7u)) ^ *(a49 + 4 * (HIBYTE(v241) ^ 0xF6));
  v252 = v251 ^ *(a47 + 4 * (((v236 ^ v232) >> 16) ^ 0x8Bu));
  v253 = ((v252 & 0xB9239E9B ^ 0x4FFC6566) & (v252 & 0x46DC6164 ^ 0xFD6BBEFF)) + 2013407140 - 2 * ((v252 & 0xB9239E9B ^ 0x4FFC6566) & (v252 & 0x46DC6164 ^ 0xFD6BBEFF) & 0x780227B6 ^ (v252 & 0xB9239E9B ^ 0x4FFC6566) & 0x12);
  v254 = *(a19 + 4 * (v235 ^ 0xCDu));
  v255 = v250 ^ v254 ^ *(a53 + 4 * (((v236 ^ v232) >> 8) ^ 0xBAu));
  v256 = *(a19 + 4 * ((v236 ^ v232) ^ 0xD2u)) ^ v249;
  v257 = v248 - ((2 * v248) & 0xF179DF4E) - 121835609;
  v258 = *(a49 + 4 * (HIBYTE(v257) ^ 0xD)) ^ *(a53 + 4 * (BYTE1(v255) ^ 0x80u)) ^ *(a47 + 4 * (BYTE2(v256) ^ 0xD2u)) ^ *(a19 + 4 * (v253 ^ 0xA4u));
  HIDWORD(v94) = v258 ^ 0x30B45A;
  LODWORD(v94) = v258 ^ 0x80FFFFFF;
  v259 = (v94 >> 22) - ((2 * (v94 >> 22)) & 0x5F8FEB8E) - 1345849913;
  HIDWORD(v94) = v259 ^ 0x2F4;
  LODWORD(v94) = v259 ^ 0x112AD800;
  v260 = (v94 >> 10) - ((2 * (v94 >> 10)) & 0xE00CBCC2);
  v262 = *(a53 + 4 * (BYTE1(v256) ^ 9u)) ^ *(a49 + 4 * (HIBYTE(v253) ^ 0x78)) ^ *(a47 + 4 * (BYTE2(v257) ^ 0x89u));
  v263 = (v236 & 0x40 ^ 0x3FA54EFF) + 2 * (v236 & 0x40);
  v264 = *(a19 + 4 * ((v250 ^ v254 ^ *(a53 + 4 * (((v236 ^ v232) >> 8) ^ 0xBAu))) ^ 0xC6u));
  v265 = v264 & 0x425AB118;
  v266 = v262 ^ v264;
  v265 ^= 0x42021108u;
  v267 = (v262 & 0x425AB118 ^ 0x4252A110) + v265;
  v268 = (2 * ((v265 & (v262 ^ 0x4252A110)) - ((2 * (v265 & (v262 ^ 0x4252A110))) & 0x244220)) - 651768022) ^ 0xD926CF2A;
  v269 = (v267 ^ 0xBECFFFDE) + ((2 * v267) & 0xD9FE630) + 1093664803 + ((v268 - ((2 * v268) & 0x8A59FB6C) + 1160576439) ^ 0xBAD30248);
  v270 = v269 + 532198942 + (~(2 * v269) | 0xC08E93C5);
  v271 = v263 - 33621569;
  if (((v263 - 1067798271) & (v232 ^ 0xC3F7EB40)) + 1890901062 - ((2 * ((v263 - 1067798271) & (v232 ^ 0xC3F7EB40))) & 0xE169B800) != 1890901062)
  {
    v271 = 2101974973 - v263;
  }

  v272 = ((v232 ^ 0xC3F7EB70) - 1034176702 + v271 - ((2 * ((v232 ^ 0xC3F7EB70) - 1034176702 + v271)) & 0x11877474) + 147044922) ^ v236 & 0xFFFFFFBF;
  v273 = ((((v272 ^ 0xF1BFEB98) >> (v237 & 8 ^ 8)) + 26182870 - ((2 * ((v272 ^ 0xF1BFEB98) >> (v237 & 8 ^ 8))) & 0x31F09AC)) ^ 0x18F84D6) >> (v237 & 8);
  v274 = *(a19 + 4 * (v272 ^ 0x98u)) ^ v249;
  v275 = (2 * (v250 & 0x400)) ^ 0x800 | v250 & 0x400;
  v276 = v244 ^ v243 ^ *(a49 + 4 * (HIBYTE(v272) ^ 0xF1));
  v277 = *(a53 + 4 * ((v273 - ((2 * v273) & 0x80) - 64) ^ 0xC0u)) ^ 0xC195F7CF;
  v278 = ((v275 - 1024) & v277) + 294972454 - ((2 * ((v275 - 1024) & v277)) & 0x2329D810) == 294972454;
  v279 = v275 + 748492880;
  v280 = 748494928 - v275;
  if (!v278)
  {
    v279 = v280;
  }

  v281 = v251 ^ *(a47 + 4 * (BYTE2(v272) ^ 0xBFu));
  v282 = v250 & 0xFFFFFBFF ^ v254 ^ (v277 - 748493904 + v279 - ((2 * (v277 - 748493904 + v279)) & 0xE1CE1088) - 253294524);
  v283 = *(a47 + 4 * (BYTE2(v274) ^ 0xD2u)) ^ *(a19 + 4 * (v281 ^ 0x66u)) ^ *(a49 + 4 * (HIBYTE(v276) ^ 0x75)) ^ *(a53 + 4 * (BYTE1(v282) ^ 0x7Bu));
  v284 = *(a47 + 4 * (BYTE2(v281) ^ 0x68u)) ^ *(a53 + 4 * (BYTE1(v276) ^ 0x6Au));
  v285 = *(a47 + 4 * (BYTE2(v276) ^ 0xC5u)) ^ *(a49 + 4 * (HIBYTE(v281) ^ 0x4D));
  v286 = *(a47 + 4 * (BYTE2(v282) ^ 0x27u)) ^ *(a53 + 4 * (BYTE1(v281) ^ 0x24u)) ^ *(a49 + 4 * (HIBYTE(v274) ^ 0x29)) ^ *(a19 + 4 * (v276 ^ 0x67u));
  v287 = *(a49 + 4 * (HIBYTE(v282) ^ 0xA)) ^ v284 ^ *(a19 + 4 * ((*(a19 + 4 * (v272 ^ 0x98u)) ^ v249) ^ 0xF0u));
  v288 = v285 ^ *(a53 + 4 * (BYTE1(v274) ^ 9u));
  v289 = ((2 * v283) & 0x536FFEBA ^ 0x13619000) + (v283 ^ 0x240737FF);
  v290 = ((2 * v286) & 0xE7FFDBFC ^ 0x4124CA10) + (v286 ^ 0xD76D98F6);
  v291 = v288 ^ *(a19 + 4 * (v282 ^ 0x4Du));
  v292 = ((2 * (((v260 - 268018079) ^ 0x31A999D2) - 54983864)) & 0x83FEBBE8) + ((((v260 - 268018079) ^ 0x31A999D2) - 54983864) ^ 0x41FF5DF4) - v289;
  v261 = *(a47 + 4 * (BYTE2(v255) ^ 0x55u)) ^ *(a49 + 4 * (HIBYTE(v256) ^ 0x29)) ^ *(a53 + 4 * (BYTE1(v253) ^ 0x27u)) ^ *(a19 + 4 * (v257 ^ 0x9Au));
  v293 = (v261 & 0xFFFFFFEF ^ 0x180470F2 ^ ((v261 & 0x10 ^ 0x3C960612) - 24)) - 651653269;
  v294 = ((2 * v293) & 0xF5D6FFFE) + (v293 ^ 0x7AEB7FFF) - v290;
  v295 = v294 - ((2 * v294 - 232203266) & 0xDF50817C);
  v296 = ((2 * v291) & 0x7DF7BBE6 ^ 0x2557A340) + (v291 ^ 0xEC540C5B);
  v297 = ((2 * ((v266 & 0xBDA54EE7 ^ 0x4D47D7AD ^ v270) - 123154961)) & 0xFBF8EF4A) + (((v266 & 0xBDA54EE7 ^ 0x4D47D7AD ^ v270) - 123154961) ^ 0xFDFC77A5) - v296;
  v298 = ((2049466841 * ((v295 + 1757195965) ^ 0x9A7D37E4)) ^ 0xE99F6FF7) + ((-196033614 * ((v295 + 1757195965) ^ 0x9A7D37E4)) & 0xD33EDFEE);
  v299 = v297 - ((2 * v297 - 2114007908) & 0xD6FC1056) - 1401065863;
  v300 = (*(a19 + 4 * (v256 ^ 0xF0u)) ^ *(a47 + 4 * (BYTE2(v253) ^ 2u)) ^ *(a49 + 4 * (HIBYTE(v255) ^ 0x3B)) ^ 0x9F374194 ^ *(a53 + 4 * (BYTE1(v257) ^ 0x31u))) - 601152054;
  v301 = (v292 - ((2 * v292 + 1332822738) & 0x40273FC8) - 2016657075) ^ 0xE753055;
  v302 = ((2 * v287) & 0x7BEF5FEE ^ 0x3A6E0328) + (v287 ^ 0xA2C0EE63);
  v303 = ((2 * v300) & 0xDDB55EBC) + (v300 ^ 0x6EDAAF5E) - v302;
  v304 = ((1274095089 * v301) ^ 0xEBEDFF5F) + ((-1746777118 * v301) & 0xD7DBFEBE) + v298;
  v305 = (v303 - ((2 * v303 - 1640365774) & 0x81E3E420) + 269415081) ^ 0x92178B1A;
  v306 = 1932989815 * v305 - ((1718495982 * v305) & 0x46CBDF52) - 1553600599;
  v307 = ((2 * (v306 ^ (v298 + 375427081))) & 0xE153BA6E ^ 0x40439A42) + (v306 ^ (v298 + 375427081) ^ 0x53CC329E);
  v308 = v299 & 0xFFFFDFFF ^ 0xD57EF4A0 ^ (1895835661 - (~(2 * (v299 & 0x2000)) & 0x64005104 | v299 & 0x2000));
  v309 = 1308476001 * v308 - 940125343 - ((-1678015294 * v308) & 0x8FEDA6C2);
  v310 = v309 ^ v306;
  v311 = (v309 ^ (v304 + 712151210) ^ 0xC7F6D361) + 304385129 - 2 * ((v309 ^ (v304 + 712151210) ^ 0xC7F6D361) & 0x12248C6F ^ (v309 ^ (v304 + 712151210)) & 6);
  v312 = (v310 ^ 0x9B6CC337) + v304 - ((2 * ((v310 ^ 0x9B6CC337) + v304) + 350560598) & 0x2390432A) + 1010479680;
  v313 = v307 + 257303241;
  v314 = ((2 * ((v311 ^ 0x12248C69) + v307 + 257303241)) & 0xDEA7EFAE) + (((v311 ^ 0x12248C69) + v307 + 257303241) ^ 0xEF53F7D7);
  v315 = v312 ^ (-159475862 - v307 - ((22264430 - 2 * v307) & 0xBA97466));
  v316 = ((2 * v315) & 0xAEF3FF56 ^ 0x28313744) + (v315 ^ 0x4365640D);
  v317 = v314 - v316;
  v318 = (v310 ^ 0x755B1D5D ^ v312) - (v314 - v316) - 1747322836;
  v319 = ((2 * v318) & 0xF9D34F7E) + (v318 ^ 0x7CE9A7BF);
  v320 = v289 - v316 - 2 * ((v289 - v316 + 1092174368) & 0x583547FC ^ (v289 - v316) & 4) + 424577560;
  v321 = v302 - v319 - ((2 * (v302 - v319) + 277415412) & 0x2DEEDC04) + 1060892924;
  v322 = v290 - v317 - ((2 * (v290 - v317) + 687360456) & 0x36595CE0) - 1347890348;
  v323 = ((2 * v319 - ((4 * v319 + 207184132) & 0x58605A08) - 1302536825) ^ 0xAC302D05) + v313;
  v324 = v296 - v319 + (v323 ^ 0xF5AD5B7F) + ((2 * v323) & 0xEB5AB6FE);
  v325 = v324 - ((2 * v324 - 1937021276) & 0xF1C31918) - 1087946786;
  v326 = *(a24 + 4 * (HIBYTE(v325) ^ 0x78));
  v327 = (v326 & 0x400000 | ((((v326 & 0x400000u) >> 22) & 1) << 23) | 0xBF3DE37F) ^ 0x800000;
  v328 = *(a52 + 4 * (((v324 - ((2 * v324 + 26276) & 0x1918) + 16350) >> 8) ^ 0x8Cu)) ^ *(a24 + 4 * (HIBYTE(v322) ^ 0x1B)) ^ *(a22 + 4 * (BYTE2(v321) ^ 0xF7u)) ^ *(a55 + 4 * (v320 ^ 0xF8u));
  v329 = (v328 ^ 0xF9C9D622) + 2008156231 - 2 * ((v328 ^ 0xF9C9D622) & 0x77B20857 ^ v328 & 0x10);
  v330 = *(a22 + 4 * (BYTE2(v320) ^ 0x35u));
  v278 = ((v330 ^ 0x11800000) & (v327 + 1082268801)) + 1227073751 - ((2 * ((v330 ^ 0x11800000) & (v327 + 1082268801))) & 0x92041100) == 1227073751;
  v331 = v327 + 1811832283;
  v332 = -352705319 - v327;
  if (v278)
  {
    v332 = v331;
  }

  v333 = (v330 ^ 0x11BD6904) - 729563482 + v332 - ((2 * ((v330 ^ 0x11BD6904) - 729563482 + v332)) & 0x24C316B8);
  v334 = a17 ^ *(a24 + 4 * (HIBYTE(v320) ^ 0xD8)) ^ *(a22 + 4 * (BYTE2(v322) ^ 0x2Cu)) ^ *(a52 + 4 * (BYTE1(v321) ^ 0x6Eu)) ^ *(a55 + 4 * (v325 ^ 0x8Cu));
  v335 = *(a22 + 4 * (BYTE2(v325) ^ 0xE1u));
  v336 = a17 ^ *(a52 + 4 * (BYTE1(v322) ^ 0xAEu)) ^ *(a55 + 4 * (v321 ^ 2u)) ^ v326 & 0xFFBFFFFF;
  v337 = HIDWORD(a36) ^ HIDWORD(a37) ^ a26 ^ *(a24 + 4 * (HIBYTE(v321) ^ 0x96)) ^ *(a55 + 4 * (v322 ^ 0x70u)) ^ *(a52 + 4 * (BYTE1(v320) ^ 0x47u)) ^ v335;
  HIDWORD(v338) = v337 ^ 3;
  LODWORD(v338) = v337 ^ 0x8D9B6BB0;
  v339 = (v338 >> 3) - ((2 * (v338 >> 3)) & 0xD471D54E) - 365368665;
  HIDWORD(v338) = v339 ^ 0x17C47B27;
  LODWORD(v338) = v339 ^ 0x60000000;
  v340 = (v338 >> 29) - ((2 * (v338 >> 29)) & 0x459A1E96) - 1563619509;
  LOBYTE(v339) = ((v338 >> 29) - ((2 * (v338 >> 29)) & 0x96) + 75) & 8;
  v341 = ((((a17 ^ v329 ^ 0xB9082A1E) >> (v339 ^ 8)) - 1158375056 - ((2 * ((a17 ^ v329 ^ 0xB9082A1E) >> (v339 ^ 8))) & 0x75E932E0)) ^ 0xBAF49970) >> v339;
  v342 = byte_100A067E0[(v341 - ((2 * v341) & 8) + 4) ^ 0x70];
  *(a41 + v355) = v342 ^ 0xF2 ^ (v342 >> 2) & 0x1B;
  *(a41 + v356) = byte_100A067E0[BYTE1(v334) ^ 0xC8] ^ 0x31 ^ (byte_100A067E0[BYTE1(v334) ^ 0xC8] >> 2) & 0x1B;
  v343 = byte_1009E99F0[BYTE2(v334) ^ 0x19];
  *(a41 + v352) = v343 ^ (v343 >> 4) ^ (v343 >> 1) ^ 0x3C;
  v344 = byte_1009E99F0[BYTE2(v340) ^ 0x15];
  v345 = (v344 >> 3) ^ 0x16;
  v346 = 2 * ((v345 & (v344 ^ 0xB5)) - ((2 * (v345 & (v344 ^ 0xB5))) & 0x34));
  LOBYTE(v345) = ((v345 + (v344 ^ 0xB5)) ^ 0xAA) + ((2 * (v345 + (v344 ^ 0xB5))) & 0x54) + ((((v346 + 52) ^ 0x34) - ((2 * (v346 + 52)) & 0x94) + 74) ^ 0xB5) + 87;
  *(a41 + a29) = v344 ^ (((v345 - ((2 * v345) & 0x64) - 78) & 0xFE) >> 1) ^ 0xE1;
  v347 = v336 ^ (v333 + 308382556);
  LOBYTE(v345) = byte_100A0D270[HIBYTE(v347) ^ 0xBELL];
  LOBYTE(v345) = v345 - 2 * ((v345 + 6) & 7 ^ v345 & 1) + 28;
  *(a41 + HIDWORD(a26)) = v345 ^ 0xD1 ^ (((8 * v345) ^ 0x30) - ((2 * ((8 * v345) ^ 0x30)) & 0x20) - 112);
  *(a41 + a32) = byte_1009EC630[v334 ^ 0x98] ^ 0x1A;
  LOBYTE(v345) = byte_100A0D270[HIBYTE(v334) ^ 0xCLL];
  LOBYTE(v345) = v345 - ((2 * v345 + 44) & 0x50) - 66;
  *(a41 + v357) = v345 ^ 0x85 ^ (((8 * v345) ^ 0x40) - ((2 * ((8 * v345) ^ 0x40)) & 0xE0) - 16);
  *(a41 + a35) = byte_1009EC630[(v336 ^ (v333 + 92)) ^ 0xE1] ^ 0x9D;
  LOBYTE(v345) = byte_100A0D270[HIBYTE(v340) ^ 0x66];
  LOBYTE(v333) = v345 - ((2 * v345 + 44) & 0x34) - 80;
  *(a41 + (a43 ^ 0xCB60F689)) = v333 ^ 0x3D ^ (((8 * v333) ^ 0xD0) - 16 * (v345 & 1) - 118);
  LOBYTE(v345) = byte_100A067E0[BYTE1(v340) ^ 0x7FLL];
  LOBYTE(v333) = (((v345 ^ 0xD7) + 13) ^ 0x7B) + ((2 * ((v345 ^ 0xD7) + 13)) & 0xF7) + ((((2 * v345) ^ 0xAE) - ((2 * ((2 * v345) ^ 0xAE)) & 0x10) + 25) & 0x1A ^ 0xE7) - 122;
  *(a41 + HIDWORD(v355)) = (v345 >> 2) & 0x1B ^ (v333 - ((2 * v333) & 0xC3) - 31) ^ 0xF0;
  LOBYTE(v345) = byte_1009EC630[((v338 >> 29) - ((2 * (v338 >> 29)) & 0x96) + 75) ^ 0x61];
  LOBYTE(v333) = (v345 & 0x13 ^ 0xEE) - ((2 * (v345 & 0x13 ^ 0xEE)) & 0xB4) - 38;
  *(a41 + a37) = v333 & 0x59 ^ 0x58 ^ (((v345 & 0xEC ^ 0xD3) - ((2 * (v345 & 0xEC ^ 0xD3)) & 0x6E) - 73) ^ 0xEE) & (v333 ^ 0xDA);
  *(a41 + HIDWORD(v353)) = byte_100A067E0[BYTE1(v347) ^ 0xCDLL] ^ 0x39 ^ (byte_100A067E0[BYTE1(v347) ^ 0xCDLL] >> 2) & 0x1B;
  *(a41 + HIDWORD(v352)) = byte_1009EC630[(a17 ^ v329) ^ 0x1CLL] ^ 0xCF;
  LOBYTE(v345) = byte_100A0D270[((a17 ^ v329) >> 24) ^ 0xD3];
  LOBYTE(v345) = (v345 ^ 0x80) - ((2 * v345 + 44) & 0xD4);
  *(a41 + HIDWORD(v356)) = v345 ^ 0xD7 ^ (((8 * v345) ^ 0x50) - ((16 * v345) & 0x55) - 82);
  v348 = byte_1009E99F0[((a17 ^ v329) >> 16) ^ 0x42];
  LOBYTE(v333) = (((v348 ^ 0xB5) + 98) ^ 0x37) + ((2 * ((v348 ^ 0xB5) + 98)) & 0x6E) + ((((2 * v348) ^ 0x6A) - ((2 * ((2 * v348) ^ 0x6A)) & 0x48) + 36) & 0xC4 ^ 0xFB) - 54;
  *(a41 + v353) = (v348 >> 4) ^ (v348 >> 1) ^ 0x86 ^ (v333 - ((2 * v333) & 0xAE) - 41);
  v349 = byte_1009E99F0[BYTE2(v347) ^ 0x45];
  LOBYTE(v349) = (((v349 >> 4) ^ (v349 >> 1)) & 3 ^ v349 & 0x83 | ((v349 >> 4) ^ (v349 >> 1) ^ v349) & 0x7C) ^ 0xE;
  *(a41 + HIDWORD(v354)) = (v349 - ((2 * v349) & 0x5A) - 83) ^ 0xD1;
  HIDWORD(a23) = a51 - 179;
  return (*(&off_100C005A0 + ((704 * (((v357 - 882837887 - ((2 * v357 + 32) & 0x96C1ED02) + 16) ^ 0xCB60F681) < HIDWORD(a29))) ^ a51)))(byte_100A0D270, 52, byte_1009E99F0, byte_1009EC630, 80, &off_100C005A0, a53, a52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v351, a26, v352, v353, a29, a30, a31, a32, v354, v355, a35, a36, a37, a38, a39, a40, a41, v356, a43, a44, a45);
}

char *sub_100308874(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

_BYTE *sub_100308AD0(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

_OWORD *sub_100308C74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100308C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_10030A0D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) uniqueID];
  [v1 requestKeyMaterialForGroup:v2 sessionID:v3 toSpecificMembers:0 requireMKM:1 requireSKM:0];
}

void sub_10030A964(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) uniqueID];
  [v1 requestKeyMaterialForGroup:v2 sessionID:v3 toSpecificMembers:0 requireMKM:1 requireSKM:0];
}

void sub_10030C504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 serviceName];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 32);
    v9 = [v13 serviceName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  v10 = *(a1 + 32);
  v11 = [v13 serviceName];
  v12 = [v10 objectForKeyedSubscript:v11];

  [v12 addObject:v13];
}

void sub_10030C848(id a1)
{
  qword_100CBCDB8 = objc_alloc_init(IDSDeviceHeartbeatCenter);

  _objc_release_x1();
}

void sub_10030FA70(id a1)
{
  qword_100CBCDD8 = objc_alloc_init(IDSPeerIDManager);

  _objc_release_x1();
}

void sub_100310108(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100310130(uint64_t a1, void *a2)
{
  v3 = a2;
  v70 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v61 = v3;
    v5 = +[NSMutableString string];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v60 = WeakRetained;
    obj = [WeakRetained persistenceManagers];
    v64 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v64)
    {
      v63 = *v88;
      do
      {
        v6 = 0;
        do
        {
          if (*v88 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v65 = v6;
          v7 = *(*(&v87 + 1) + 8 * v6);
          [v5 appendString:@"Query cache:\n"];
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v67 = [v7 allPeerIDKeys];
          v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v69)
          {
            v68 = *v84;
            do
            {
              v8 = 0;
              do
              {
                if (*v84 != v68)
                {
                  objc_enumerationMutation(v67);
                }

                v71 = v8;
                v9 = *(*(&v83 + 1) + 8 * v8);
                v10 = [v9 service];
                v11 = [v9 fromURI];
                v12 = [v9 toURI];
                [v5 appendFormat:@"Key: <%@, from:%@, to:%@>\n", v10, v11, v12];

                v82 = 0;
                v13 = *(v70 + 32);
                v14 = [v9 service];
                v15 = [v9 fromURI];
                v72 = v9;
                v16 = [v9 toURI];
                v17 = [v13 _endpointsForService:v14 fromURI:v15 toURI:v16 ignoreExpiration:1 ignoreCache:0 hitCache:&v82];

                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v18 = v17;
                v19 = [v18 countByEnumeratingWithState:&v78 objects:v92 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v79;
                  do
                  {
                    for (i = 0; i != v20; i = i + 1)
                    {
                      if (*v79 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v78 + 1) + 8 * i);
                      v24 = [v23 serializedPublicLegacyIdentity];
                      v25 = [v23 URI];
                      [v5 appendFormat:@"        URI: %@\n", v25];

                      v26 = [v23 shortHandle];
                      [v5 appendFormat:@"        Short Handle: %@\n", v26];

                      v27 = [v23 pushToken];
                      v28 = [v27 debugDescription];
                      [v5 appendFormat:@"        Push token: %@\n", v28];

                      v29 = [v23 sessionToken];
                      v30 = [v29 debugDescription];
                      [v5 appendFormat:@"        Session token: %@\n", v30];

                      v31 = [v23 expireDate];
                      [v5 appendFormat:@"        Expire: %@\n", v31];

                      v32 = [v23 refreshDate];
                      [v5 appendFormat:@"        Refresh: %@\n", v32];

                      [v5 appendFormat:@"        Public Key: %@\n", v24];
                    }

                    v20 = [v18 countByEnumeratingWithState:&v78 objects:v92 count:16];
                  }

                  while (v20);
                }

                if (v82 == 1)
                {
                  v33 = *(v70 + 32);
                  v34 = [v72 service];
                  v35 = [v72 fromURI];
                  v36 = [v72 toURI];
                  v37 = [v33 _endpointsForService:v34 fromURI:v35 toURI:v36 ignoreExpiration:1 ignoreCache:1 hitCache:0];

                  v38 = [NSSet setWithArray:v18];
                  v39 = [NSSet setWithArray:v37];
                  LOBYTE(v35) = [v38 isEqualToSet:v39];

                  if ((v35 & 1) == 0)
                  {
                    v40 = [v72 service];
                    v41 = [v72 fromURI];
                    v42 = [v72 toURI];
                    [v5 appendFormat:@"Persisted Result for Key: <%@, from:%@, to:%@>\n", v40, v41, v42];

                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v66 = v37;
                    v73 = v37;
                    v43 = [v73 countByEnumeratingWithState:&v74 objects:v91 count:16];
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v75;
                      do
                      {
                        for (j = 0; j != v44; j = j + 1)
                        {
                          if (*v75 != v45)
                          {
                            objc_enumerationMutation(v73);
                          }

                          v47 = *(*(&v74 + 1) + 8 * j);
                          v48 = [v47 serializedPublicLegacyIdentity];
                          v49 = [v47 URI];
                          [v5 appendFormat:@"        URI: %@\n", v49];

                          v50 = [v47 shortHandle];
                          [v5 appendFormat:@"        Short Handle: %@\n", v50];

                          v51 = [v47 pushToken];
                          v52 = [v51 debugDescription];
                          [v5 appendFormat:@"        Push token: %@\n", v52];

                          v53 = [v47 sessionToken];
                          v54 = [v53 debugDescription];
                          [v5 appendFormat:@"        Session token: %@\n", v54];

                          v55 = [v47 expireDate];
                          [v5 appendFormat:@"        Expire: %@\n", v55];

                          v56 = [v47 refreshDate];
                          [v5 appendFormat:@"        Refresh: %@\n", v56];

                          [v5 appendFormat:@"        Public Key: %@\n", v48];
                        }

                        v44 = [v73 countByEnumeratingWithState:&v74 objects:v91 count:16];
                      }

                      while (v44);
                    }

                    v37 = v66;
                  }
                }

                v8 = v71 + 1;
              }

              while ((v71 + 1) != v69);
              v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v69);
          }

          v6 = v65 + 1;
        }

        while ((v65 + 1) != v64);
        v64 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
      }

      while (v64);
    }

    v57 = [*(v70 + 32) keyTransparencyVerifier];
    v58 = [v57 isOptedInForServiceIdentifier:@"com.apple.madrid"];
    v59 = @"NO";
    if (v58)
    {
      v59 = @"YES";
    }

    [v5 appendFormat:@"KT Opt In State: %@\n", v59];

    v3 = v61;
    (v61)[2](v61, v5);

    WeakRetained = v60;
  }

  else
  {
    v3[2](v3, 0);
  }
}

uint64_t sub_10031092C(uint64_t a1)
{
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  obj = [WeakRetained persistenceManagers];
  v79 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
  if (v79)
  {
    v78 = *v107;
    do
    {
      for (i = 0; i != v79; i = i + 1)
      {
        if (*v107 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v1 = *(*(&v106 + 1) + 8 * i);
        v2 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Query cache:", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v82 = [v1 allPeerIDKeys];
        v84 = [v82 countByEnumeratingWithState:&v102 objects:v118 count:16];
        if (v84)
        {
          v83 = *v103;
          do
          {
            for (j = 0; j != v84; j = j + 1)
            {
              if (*v103 != v83)
              {
                objc_enumerationMutation(v82);
              }

              v3 = *(*(&v102 + 1) + 8 * j);
              v88 = v3;
              v4 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
              {
                v5 = [v3 service];
                v6 = [v3 fromURI];
                v7 = [v3 toURI];
                *buf = 138543875;
                v113 = v5;
                v114 = 2113;
                v115 = v6;
                v116 = 2113;
                v117 = v7;
                _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Key: <%{public}@,from:%{private}@,to:%{private}@>", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v8 = [v3 service];
                v9 = [v3 fromURI];
                [v3 toURI];
                v76 = v75 = v9;
                v74 = v8;
                _IDSLogV();
              }

              v101 = 0;
              v10 = *(a1 + 32);
              v11 = [v3 service];
              v12 = [v3 fromURI];
              v13 = [v3 toURI];
              v14 = [v10 _endpointsForService:v11 fromURI:v12 toURI:v13 ignoreExpiration:1 ignoreCache:0 hitCache:&v101];

              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v90 = v14;
              v15 = [v90 countByEnumeratingWithState:&v97 objects:v111 count:16];
              if (v15)
              {
                v91 = *v98;
                do
                {
                  for (k = 0; k != v15; k = k + 1)
                  {
                    if (*v98 != v91)
                    {
                      objc_enumerationMutation(v90);
                    }

                    v17 = *(*(&v97 + 1) + 8 * k);
                    v18 = [v17 serializedPublicLegacyIdentity];
                    v19 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = [v17 URI];
                      *buf = 138412290;
                      v113 = v20;
                      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "        URI: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v74 = [v17 URI];
                      _IDSLogV();
                    }

                    v21 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = [v17 shortHandle];
                      *buf = 138412290;
                      v113 = v22;
                      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "        Short Handle: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v74 = [v17 shortHandle];
                      _IDSLogV();
                    }

                    v23 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = [v17 pushToken];
                      v25 = [v24 debugDescription];
                      *buf = 138412290;
                      v113 = v25;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "        Push token: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v26 = [v17 pushToken];
                      v74 = [v26 debugDescription];
                      _IDSLogV();
                    }

                    v27 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      v28 = [v17 sessionToken];
                      v29 = [v28 debugDescription];
                      *buf = 138412290;
                      v113 = v29;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "        Session token: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v30 = [v17 sessionToken];
                      v74 = [v30 debugDescription];
                      _IDSLogV();
                    }

                    v31 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      v32 = [v17 expireDate];
                      *buf = 138412290;
                      v113 = v32;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "        Expire: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v74 = [v17 expireDate];
                      _IDSLogV();
                    }

                    v33 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      v34 = [v17 refreshDate];
                      *buf = 138412290;
                      v113 = v34;
                      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "        Refresh: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v74 = [v17 refreshDate];
                      _IDSLogV();
                    }

                    v35 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v113 = v18;
                      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "        Public Key: %@", buf, 0xCu);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v74 = v18;
                      _IDSLogV();
                    }
                  }

                  v15 = [v90 countByEnumeratingWithState:&v97 objects:v111 count:16];
                }

                while (v15);
              }

              if (v101 == 1)
              {
                v36 = *(a1 + 32);
                v37 = [v88 service];
                v38 = [v88 fromURI];
                v39 = [v88 toURI];
                v86 = [v36 _endpointsForService:v37 fromURI:v38 toURI:v39 ignoreExpiration:1 ignoreCache:1 hitCache:0];

                v40 = [NSSet setWithArray:v90];
                v41 = [NSSet setWithArray:v86];
                LOBYTE(v36) = [v40 isEqualToSet:v41];

                if ((v36 & 1) == 0)
                {
                  v42 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = [v88 service];
                    v44 = [v88 fromURI];
                    v45 = [v88 toURI];
                    *buf = 138543875;
                    v113 = v43;
                    v114 = 2113;
                    v115 = v44;
                    v116 = 2113;
                    v117 = v45;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Persisted Result for Key: <%{public}@,from:%{private}@,to:%{private}@>", buf, 0x20u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v46 = [v88 service];
                    v47 = [v88 fromURI];
                    [v88 toURI];
                    v76 = v75 = v47;
                    v74 = v46;
                    _IDSLogV();
                  }

                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v89 = v86;
                  v48 = [v89 countByEnumeratingWithState:&v93 objects:v110 count:16];
                  if (v48)
                  {
                    v92 = *v94;
                    do
                    {
                      for (m = 0; m != v48; m = m + 1)
                      {
                        if (*v94 != v92)
                        {
                          objc_enumerationMutation(v89);
                        }

                        v50 = *(*(&v93 + 1) + 8 * m);
                        v51 = [v50 serializedPublicLegacyIdentity];
                        v52 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                        {
                          v53 = [v50 URI];
                          *buf = 138412290;
                          v113 = v53;
                          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "        URI: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v74 = [v50 URI];
                          _IDSLogV();
                        }

                        v54 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                        {
                          v55 = [v50 shortHandle];
                          *buf = 138412290;
                          v113 = v55;
                          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "        Short Handle: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v74 = [v50 shortHandle];
                          _IDSLogV();
                        }

                        v56 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                        {
                          v57 = [v50 pushToken];
                          v58 = [v57 debugDescription];
                          *buf = 138412290;
                          v113 = v58;
                          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "        Push token: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v59 = [v50 pushToken];
                          v74 = [v59 debugDescription];
                          _IDSLogV();
                        }

                        v60 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                        {
                          v61 = [v50 sessionToken];
                          v62 = [v61 debugDescription];
                          *buf = 138412290;
                          v113 = v62;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "        Session token: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v63 = [v50 sessionToken];
                          v74 = [v63 debugDescription];
                          _IDSLogV();
                        }

                        v64 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                        {
                          v65 = [v50 expireDate];
                          *buf = 138412290;
                          v113 = v65;
                          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "        Expire: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v74 = [v50 expireDate];
                          _IDSLogV();
                        }

                        v66 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                        {
                          v67 = [v50 refreshDate];
                          *buf = 138412290;
                          v113 = v67;
                          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "        Refresh: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v74 = [v50 refreshDate];
                          _IDSLogV();
                        }

                        v68 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v113 = v51;
                          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "        Public Key: %@", buf, 0xCu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v74 = v51;
                          _IDSLogV();
                        }
                      }

                      v48 = [v89 countByEnumeratingWithState:&v93 objects:v110 count:16];
                    }

                    while (v48);
                  }
                }
              }
            }

            v84 = [v82 countByEnumeratingWithState:&v102 objects:v118 count:16];
          }

          while (v84);
        }
      }

      v79 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
    }

    while (v79);
  }

  v69 = +[IMRGLog sysdiagnose_oversized];
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v70 = [*(a1 + 32) keyTransparencyVerifier];
    v71 = [v70 isOptedInForServiceIdentifier:@"com.apple.madrid"];
    v72 = @"NO";
    if (v71)
    {
      v72 = @"YES";
    }

    *buf = 138412290;
    v113 = v72;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "KT Opt In State: %@", buf, 0xCu);
  }

  return 0;
}

uint64_t sub_100314F04(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (*(a1 + 48))
    {
      v7 = @"YES";
    }

    *buf = 138413058;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updated sender key validity for service: %@, uri: %@ with success: %@ markInvalid: %@", buf, 0x2Au);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

void sub_100315084(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      *buf = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error saving endpoints to SwiftData DB for service: %@, uri: %@, error: %@, uuid: %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully saved endpoints to SwiftData DB for service: %@, uri: %@, uuid: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_12:
      _IDSLogV();
    }
  }
}

void sub_1003152B0(id a1, NSArray *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed kicking KT peer verification for query { error: %@ }", &v5, 0xCu);
    }
  }
}

void sub_100315368(uint64_t a1)
{
  v2 = [*(a1 + 32) queryCompletionBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

uint64_t sub_100315FCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pushToken];
  LODWORD(v2) = [v2 isEqualToData:v3];

  return v2 ^ 1;
}

id sub_100316014(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rawToken];
  v5 = [v3 pushToken];

  v6 = [v4 isEqualToData:v5];
  return v6;
}

id sub_1003161D0(uint64_t a1, void *a2)
{
  v3 = [a2 pushTokenObject];
  v4 = [v3 isEqualToPushToken:*(a1 + 32)];

  return v4;
}

id sub_100316610(uint64_t a1, void *a2)
{
  v3 = [a2 pushTokenObject];
  v4 = [v3 isEqualToPushToken:*(a1 + 32)];

  return v4;
}

id sub_100317324(uint64_t a1, void *a2)
{
  v3 = [a2 pushTokenObject];
  v4 = [v3 isEqualToPushToken:*(a1 + 32)];

  return v4;
}

uint64_t sub_100317700(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v9, v16}];
        v11 = [v3 capabilities];
        v12 = [v11 valueForCapability:v9];
        v13 = [v10 integerValue];

        if (v12 != v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

id sub_100318584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 fromURI];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1003186F0(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100318AC8(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kFZServiceDefaultsSentinelAlias]|| [(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [IDSURI URIWithPrefixedURI:v2];
  }

  return v3;
}

void sub_1003193FC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to update SwiftData DB with new KT peer verification results for URI: %@ {error: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated SwiftData DB with new KT peer verification results for URI: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_12:
      _IDSLogV();
    }
  }
}

id sub_10031992C(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [(IDSURI *)v2 tokenFreeURI];
  objc_autoreleasePoolPop(v3);

  return v4;
}

void sub_100319990(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, unsigned int a8, void *a9, void *a10, char a11)
{
  v53 = a2;
  v52 = a3;
  v17 = a4;
  v51 = a5;
  v50 = a6;
  v49 = a7;
  v48 = a9;
  v47 = a10;
  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) allObjects];
  v54 = [v18 endpointsForURIs:v19 service:*(a1 + 48) fromURI:*(a1 + 56)];

  v20 = +[NSMutableDictionary dictionary];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v56 = a1;
  obj = *(a1 + 64);
  v21 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v62;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v61 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v27 = [v25 pushToken];
        v28 = [v25 tokenFreeURI];
        v58 = v27;
        if (![v17 count])
        {
          if (!v27)
          {
            goto LABEL_17;
          }

LABEL_11:
          v31 = *(v56 + 72);
          goto LABEL_12;
        }

        v29 = [v17 containsObject:v28];
        v30 = v29;
        if (!v27)
        {
          if (v29)
          {
            v41 = v54;
          }

          else
          {
LABEL_17:
            v41 = *(v56 + 72);
          }

          v32 = [v41 objectForKeyedSubscript:v28];
          [v20 setObject:v32 forKeyedSubscript:v28];
          goto LABEL_19;
        }

        v31 = v54;
        if ((v30 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_12:
        v57 = v26;
        v32 = [v31 objectForKeyedSubscript:v28];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100319DA4;
        v59[3] = &unk_100BD7048;
        v60 = v58;
        v33 = [v32 __imArrayByFilteringWithBlock:v59];
        v34 = [v20 objectForKeyedSubscript:v28];
        v35 = v34;
        if (v34)
        {
          [v34 arrayByAddingObjectsFromArray:v33];
          v36 = v20;
          v37 = v22;
          v38 = v23;
          v40 = v39 = v17;

          v33 = v40;
          v17 = v39;
          v23 = v38;
          v22 = v37;
          v20 = v36;
        }

        [v20 setObject:v33 forKeyedSubscript:v28];

        v26 = v57;
LABEL_19:

        v42 = [v20 objectForKeyedSubscript:v28];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = &__NSArray0__struct;
        }

        [v20 setObject:v44 forKeyedSubscript:v28];

        objc_autoreleasePoolPop(v26);
      }

      v22 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v22);
  }

  v45 = *(v56 + 80);
  if (v45)
  {
    (*(v45 + 16))(v45, v53, v51, v50, v49, a8, v48, v47, a11, v20);
  }
}

id sub_100319DA4(uint64_t a1, void *a2)
{
  v3 = [a2 pushTokenObject];
  v4 = [v3 isEqualToPushToken:*(a1 + 32)];

  return v4;
}

void sub_10031A4C8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed deleting peer and personal entries from DB", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10031AC18(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed deleting endpoints for URIs: %@ services: %@  {deleteError: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10031B258(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138413058;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed deleting endpoints for URI: %@  from URI: %@  service: %@  {deleteError: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10031B9C4(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138413058;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed deleting endpoints for URI: %@  from URI: %@  services: %@  {deleteError: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

id sub_10031BF2C(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kFZServiceDefaultsSentinelAlias]&& [(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [IDSURI URIWithPrefixedURI:v2];
  }

  return v3;
}

void sub_10031C278(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed deleting endpoints for service: %@  {deleteError: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully deleted endpoints for service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_12:
      _IDSLogV();
    }
  }
}

uint64_t sub_10031D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a5, a6, a7, a8, a10, a11);
  }

  return result;
}

void sub_10031E190(void *a1)
{
  if (!*(a1[4] + 24))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = a1[4];
    v4 = *(v3 + 24);
    *(v3 + 24) = Mutable;
  }

  v5 = [[IDSPeerIDManagerEndpointQueryListener alloc] initWithQueryCompletionBlock:a1[7] queue:a1[5]];
  [*(a1[4] + 24) setObject:v5 forKey:a1[6]];
}

void sub_10031E3C8(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

void sub_10031E72C(uint64_t a1)
{
  v2 = [*(a1 + 32) endpointsForURIs:*(a1 + 40) service:*(a1 + 48) fromURI:*(a1 + 56)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10031E7EC;
  v6[3] = &unk_100BD7298;
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

id sub_10031EECC(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kFZServiceDefaultsSentinelAlias]|| [(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [IDSURI URIWithPrefixedURI:v2];
  }

  return v3;
}

void sub_100321390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isUserDisabled] & 1) == 0)
  {
    v7 = [*(a1 + 32) restrictions];
    if ([v7 shouldDisableService:v6])
    {
    }

    else
    {
      v8 = [v5 registrationError];

      if (v8 == 2)
      {
        v9 = +[IMRGLog registration];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v6 identifier];
          v11 = 138412546;
          v12 = v5;
          v13 = 2112;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "After SIM insertion, user denied SMS registration found, changing error {accounts: %@, service: %@", &v11, 0x16u);
        }

        [v5 _updateRegistrationStatusWithError:1 info:0];
      }
    }
  }
}

void sub_1003217BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003217E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(__CFString *)v5 registrationError]== 2 || [(__CFString *)v5 registrationError]== 35 || [(__CFString *)v5 registrationError]== 38 || [(__CFString *)v5 registrationError]== 39 || [(__CFString *)v5 registrationError]== 36;
  v8 = [*(a1 + 32) restrictions];
  v9 = [v8 shouldDisableService:v6];

  v10 = [(__CFString *)v5 isUserDisabled];
  v11 = +[IMRGLog registration];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) != 0 || (v9 & 1) != 0 || v7)
  {
    if (v12)
    {
      if ([(__CFString *)v5 isUserDisabled])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v9)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *buf = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2048;
      v22 = [(__CFString *)v5 registrationError];
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not enabling account after registration state changed {isUserDisabled: %@, shouldDisableService: %@, registrationError: %ld, account: %@}", buf, 0x2Au);
    }
  }

  else
  {
    if (v12)
    {
      v13 = [v6 identifier];
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "After registration state changed, enabling account: %@ on service: %@", buf, 0x16u);
    }

    v16 = v5;
    im_dispatch_after_primary_queue();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100321A78(uint64_t a1)
{
  v3 = [*(a1 + 32) accountController];
  v2 = [*(a1 + 40) uniqueID];
  [v3 enableAccountWithUniqueID:v2];
}

void sub_1003220E4(uint64_t a1)
{
  v2 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:*(a1 + 32)];
  v3 = [NRDeviceMonitor alloc];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v5 nrMonitorQueue];
  v7 = [v3 initWithDeviceIdentifier:v2 delegate:v5 queue:v6];
  [*v4 setNrDeviceMonitor:v7];

  v8 = [*v4 nrDeviceMonitor];

  v9 = +[IDSFoundationLog IPsecLink];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*v4 nrDeviceMonitor];
      v12 = [v11 deviceIdentifier];
      v13 = *v4;
      v14 = 138412546;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NRDeviceMonitor created {deviceIdentifier: %@, pointer: %p}", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10091503C(v4, v10);
  }
}

id sub_100322504(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) defaultPeerConnectivityDidChange:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _notifyIDSNanoRegistryPluginManagerOnWatch:v4];
}

void sub_1003226EC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) defaultPeerNearbyDidChange:*(a1 + 40)];
}

void sub_1003228D4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) defaultPeerCloudConnectivityDidChange:*(a1 + 40)];
}

void sub_100322AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) deviceMagnetIndicationOfAwakeStateDidChange:*(a1 + 40)];
}

void sub_100322D34(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) linkType:*(a1 + 40)];
}

void sub_100322F1C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nrDeviceBridge:*(a1 + 32) defaultPeerClassCConnectivityDidChange:*(a1 + 40)];
}

void sub_1003234DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100323508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) queue];
    dispatch_assert_queue_V2(v5);

    v6 = +[IDSFoundationLog query];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received endpoints for initial subscription state {self: %@, endpoints: %@}", &v11, 0x16u);
    }

    [WeakRetained _registerEndpointQueryCompletionBlock];
    v8 = [v3 mutableCopy];
    [WeakRetained setEndpointMap:v8];

    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) resolvedEndpoints];
    (*(v9 + 16))(v9, v10, 0);
  }
}

void sub_1003238BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    dispatch_assert_queue_V2(v9);

    [v8 _noteSourceDidDiscoverEndpointMap:v6 forLocalURI:v10];
  }
}

void sub_100323D3C(id a1)
{
  qword_100CBCDE8 = objc_alloc_init(IDSPublicIdentityCache);

  _objc_release_x1();
}

void sub_1003240EC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saved public identity data to SwiftData DB { success: %@ saveError: %@ }", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_100324BF8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to delete public identities with startDate: %@ endDate: %@ {deleteError: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

id sub_10032517C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = [v4 objectAtIndex:2];

  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = [v3 componentsSeparatedByString:@"-"];
    v7 = [v6 objectAtIndex:1];

    v8 = [IDSURI URIWithPrefixedURI:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100325250(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = [(IDSURI *)v2 prefixedURI];
  if ([v3 _appearsToBeDSID])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(IDSURI *)v2 prefixedURI];
    if ([v5 _appearsToBePseudonymID])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = [(IDSURI *)v2 prefixedURI];
      v4 = [v6 _appearsToBeTemporaryID] ^ 1;
    }
  }

  return v4;
}

void sub_1003260B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1003265A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      objc_end_catch();
      JUMPOUT(0x1003264E4);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100326AF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      objc_end_catch();
      JUMPOUT(0x1003269FCLL);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100326DB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100327198(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100327274(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1003274C8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_100327564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1003278F8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Get Service User ID's Completed with response %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v12 = v8;
  v14 = *(a1 + 40);
  v13 = (a1 + 40);
  v15 = *(v13 - 1);
  v16 = [v14 localObject];
  v17 = [v15 broadcasterForLocalObject:v16 messageContext:*v13];

  if (v17)
  {
    v18 = [v12 responseServiceUserIDs];
    [v17 serviceUserIDs:v18 error:v9];
  }
}

void sub_100327D2C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Get Admin Access Tokens Completed with response %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v26 = v8;
    _IDSLogV();
  }

  v12 = v8;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = [v12 responseAccessoryID];
  if (v14)
  {
    v15 = [v12 responseAdminAcccessToken];
    v16 = v15 == 0;

    if (!v16)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = [v12 responseAccessoryID];
      if (v18)
      {
        CFDictionarySetValue(v17, @"accessory-id", v18);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091550C();
      }

      v19 = [v12 responseAdminAcccessToken];
      if (v19)
      {
        CFDictionarySetValue(v17, @"access-token", v19);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009155A8();
      }

      v20 = [v12 responseExpiry];
      if (v20)
      {
        CFDictionarySetValue(v17, @"expiry", v20);
      }

      if (v13 && v17)
      {
        CFArrayAppendValue(v13, v17);
      }
    }
  }

  v22 = *(a1 + 40);
  v21 = (a1 + 40);
  v23 = *(v21 - 1);
  v24 = [v22 localObject];
  v25 = [v23 broadcasterForLocalObject:v24 messageContext:*v21];

  if (v25)
  {
    [v25 adminAccessTokens:v13 error:v9];
  }
}

void sub_100328280(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Get Consent Tokens Completed with response %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v12 = v8;
  v13 = [v12 responseConsentTokens];
  v15 = *(a1 + 40);
  v14 = (a1 + 40);
  v16 = *(v14 - 1);
  v17 = [v15 localObject];
  v18 = [v16 broadcasterForLocalObject:v17 messageContext:*v14];

  if (v18)
  {
    [v18 consentTokens:v13 error:v9];
  }
}

void sub_1003286BC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Get User Access Tokens Completed with response %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v12 = v8;
  v13 = [v12 responseAccessTokens];
  v15 = *(a1 + 40);
  v14 = (a1 + 40);
  v16 = *(v14 - 1);
  v17 = [v15 localObject];
  v18 = [v16 broadcasterForLocalObject:v17 messageContext:*v14];

  if (v18)
  {
    [v18 userAccessTokens:v13 error:v9];
  }
}

uint64_t sub_100328BD0(uint64_t a1)
{
  qword_100CBCDF0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100328D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100328D98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = im_primary_base_queue();
  dispatch_assert_queue_V2(v4);

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Duet admission revocation, {defaultIdentifiersToAllow: %@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearAdmissionCheckCache];
  [WeakRetained _resourceAvailabilityChangedForIdentifiers:v3];
}

void sub_100329640(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10032955CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1003299CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003298E8);
  }

  _Unwind_Resume(a1);
}

void sub_10032A9FC(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [IDSActivityStateProvider alloc];
  v11 = +[IMUserDefaults sharedDefaults];
  v3 = [(IDSActivityStateProvider *)v2 initWithUserDefaults:v11];
  v4 = [+[FTMessageDelivery APNSMessageDeliveryClass](FTMessageDelivery "APNSMessageDeliveryClass")];
  v5 = +[IDSPeerIDManager sharedInstance];
  v6 = +[IDSDAccountController sharedInstance];
  v7 = +[IDSDServiceController sharedInstance];
  v8 = im_primary_queue();
  v9 = [v1 initWithStateProvider:v3 messageDelivery:v4 peerIDManager:v5 accountController:v6 serviceController:v7 queue:v8];
  v10 = qword_100CBCE00;
  qword_100CBCE00 = v9;
}

void sub_10032B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = a10;
  if (a6)
  {
    v28 = a1;
    v13 = objc_alloc_init(NSMutableArray);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v12;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v20 = [v14 objectForKeyedSubscript:{v19, v28}];
          v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v31;
            do
            {
              v24 = 0;
              do
              {
                if (*v31 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(*(&v30 + 1) + 8 * v24) pushToken];
                [v13 addObject:v25];

                v24 = v24 + 1;
              }

              while (v22 != v24);
              v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v22);
          }

          v18 = v18 + 1;
        }

        while (v18 != v16);
        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }

    [*(v28 + 32) _subscribeForInfo:*(v28 + 40) withDescription:*(v28 + 48) resolvedTokens:v13 withCompletion:*(v28 + 56)];
    v12 = v29;
  }

  else
  {
    v26 = *(a1 + 56);
    v27 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-201 userInfo:0];
    (*(v26 + 16))(v26, v27);
  }
}

void sub_10032BD24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) stateProvider];
  v7 = [v6 storedActivityTopics];
  v8 = [NSMutableSet setWithSet:v7];

  [v8 removeObject:*(a1 + 40)];
  v9 = [*(a1 + 32) stateProvider];
  [v9 setStoredActivityTopics:v8];

  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v5 responseStatus] == 0;
  }

  v11 = [*(a1 + 32) stateProvider];
  [v11 storeActivityDescription:0 forActivity:*(a1 + 40)];

  v12 = [*(a1 + 32) stateProvider];
  [v12 removeSubscriptionForActivity:*(a1 + 40) subActivity:*(a1 + 48)];

  v13 = [*(a1 + 32) stateProvider];
  v14 = [v13 hasActiveSubscription];

  if ((v14 & 1) == 0)
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No active subscriptions, disabling presence on the server.", &v19, 2u);
    }

    [*(a1 + 32) stopListeningOnActivity:@"com.apple.icloud.presence"];
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v19 = 138412546;
    v20 = v17;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activity unregister for activity topic %@ finished.  Success? %d", &v19, 0x12u);
  }

  if (v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-300 userInfo:0];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10032C1F8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 responseStatus] == 0;
  }

  v14 = [*(a1 + 32) stateProvider];
  v15 = [v14 storedActivityTopics];
  v16 = [NSMutableSet setWithSet:v15];

  v17 = [*(a1 + 40) activity];
  LOBYTE(v15) = [v16 containsObject:v17];

  if ((v15 & 1) == 0)
  {
    v18 = [*(a1 + 40) activity];
    [v16 addObject:v18];

    v19 = [*(a1 + 32) stateProvider];
    [v19 setStoredActivityTopics:v16];
  }

  if (v13)
  {
    v20 = [*(a1 + 32) stateProvider];
    v21 = [v20 hasActiveSubscription];

    if ((v21 & 1) == 0)
    {
      v22 = +[IMRGLog registration];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "The first subscription succeeded, enabling presence on the server.", &v32, 2u);
      }

      [*(a1 + 32) startListeningOnActivity:@"com.apple.icloud.presence"];
    }

    v23 = [*(a1 + 32) stateProvider];
    v24 = *(a1 + 40);
    v25 = [v24 activity];
    [v23 storeActivityDescription:v24 forActivity:v25];

    v26 = [*(a1 + 32) stateProvider];
    v27 = *(a1 + 48);
    v28 = [*(a1 + 40) activity];
    [v26 storeSubscription:v27 forActivity:v28];
  }

  v29 = +[IMRGLog registration];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [*(a1 + 40) activity];
    v32 = 138412546;
    v33 = v30;
    v34 = 1024;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Activity register for activity topic %@ finished.  Success? %d", &v32, 0x12u);
  }

  if (v13)
  {
    v31 = 0;
  }

  else
  {
    v31 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-300 userInfo:0];
  }

  (*(*(a1 + 56) + 16))();
}

id sub_10032C5DC(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 isEqualToString:@"com.apple.icloud.presence"])
  {
    v3 = v2;
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%@%@", @"com.apple.icloud.presence.", v2];
  }

  v4 = v3;

  return v4;
}

void sub_10032D250(id a1, unsigned int a2, NSObject *a3, BOOL *a4, BOOL *a5)
{
  if (objc_opt_respondsToSelector())
  {
    [a3 invalidate];
  }
}

void sub_10032DC04(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBCE18 = v1 / v2 / 1000000000.0;
}

void sub_10032DE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10032DF50(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 40));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10032DF70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    v6 = *(a1 + 40);
    v7 = sub_10032E044(a3);
    (*(v6 + 16))(v6, v9, v7);
LABEL_3:

    goto LABEL_6;
  }

  if (!v5)
  {
    v8 = *(a1 + 40);
    v7 = [NSError errorWithDomain:@"Engram Error" code:65543 userInfo:0];
    (*(v8 + 16))(v8, 0, v7);
    goto LABEL_3;
  }

  [*(a1 + 32) _rollAccountKeyWithFullCluster:v5 completion:*(a1 + 40)];
LABEL_6:
}

id sub_10032E044(void *a1)
{
  if (a1)
  {
    a1 = [NSError errorWithDomain:@"Engram Error" code:a1 userInfo:0];
    v1 = vars8;
  }

  return a1;
}

void sub_10032E150(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (v5)
    {
      v10 = [v5 groupID];
      if (!v10)
      {
        sub_1009156E4();
      }

      v11 = [v6 groupID];

      if (!v11)
      {
        v15 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_10091566C(v6, v15);
        }

        v7 = *(a1 + 48);
        v8 = [NSError errorWithDomain:@"Engram Error" code:262145 userInfo:0];
        goto LABEL_3;
      }

      v12 = IDSMPServiceIdentityTypeForName();
      v9 = [v6 adminServiceIdentityWithType:v12];
      v13 = [v6 signingServiceIdentityWithType:v12];
      if (v13)
      {
        v14 = v13;
        (*(*(a1 + 48) + 16))();
LABEL_28:

        goto LABEL_29;
      }

      v9 = objc_alloc_init(NSMutableArray);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = [v6 fullServiceIdentitiesSigning];
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v27 + 1) + 8 * i) identityServiceTypeName];
            [v9 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v9 = objc_alloc_init(NSMutableArray);
    }

    v14 = [v9 mutableCopy];
    if ([v14 containsObject:*(a1 + 32)])
    {
      sub_100915710();
    }

    if (([v14 containsObject:*(a1 + 32)] & 1) == 0)
    {
      [v14 addObject:*(a1 + 32)];
    }

    if (v6)
    {
      v22 = [v6 fullAccountIdentity];
    }

    else
    {
      v22 = 0;
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10032E4B4;
    v24[3] = &unk_100BD7788;
    v23 = *(a1 + 40);
    v26 = *(a1 + 48);
    v25 = *(a1 + 32);
    [v23 _createAccountKeysWithFullAccountIdentity:v22 serviceTypeNames:v14 oldCluster:v6 completion:v24];

    goto LABEL_28;
  }

  v7 = *(a1 + 48);
  v8 = sub_10032E044(a3);
LABEL_3:
  v9 = v8;
  (*(v7 + 16))(v7, 0, 0, 0, v8);
LABEL_29:
}

void sub_10032E4B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = v5;
  if (a3)
  {
    v6 = *(a1 + 40);
    v7 = sub_10032E044(a3);
LABEL_3:
    v8 = v7;
    (*(v6 + 16))(v6, 0, 0, 0, v7);
    goto LABEL_7;
  }

  v9 = [v5 groupID];
  if (!v9)
  {
    sub_10091573C();
  }

  v10 = [v13 groupID];

  if (!v10)
  {
    v6 = *(a1 + 40);
    v7 = [NSError errorWithDomain:@"Engram Error" code:262145 userInfo:0];
    goto LABEL_3;
  }

  v11 = IDSMPServiceIdentityTypeForName();
  v8 = [v13 adminServiceIdentityWithType:v11];
  v12 = [v13 signingServiceIdentityWithType:v11];
  (*(*(a1 + 40) + 16))();

LABEL_7:
}

void sub_10032E6A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 groupName];
  if (v7)
  {
    v8 = [*(a1 + 32) keychainElectionStore];
    v19 = 0;
    v9 = [v8 fetchFullClusterWithIdentifier:v7 error:&v19];
    v10 = v19;

    if (v9)
    {
      v11 = [v9 groupID];

      if (v11)
      {
        v12 = v9;
        v13 = v10;
      }

      else
      {
        v15 = [v5 groupID];
        v18 = v10;
        v12 = [v9 clusterByUpdatingGroupID:v15 error:&v18];
        v13 = v18;

        if (!v12)
        {
          v16 = +[IDSFoundationLog accountIdentity];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v5 groupID];
            *buf = 138543874;
            v21 = 0;
            v22 = 2114;
            v23 = v17;
            v24 = 2114;
            v25 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to update groupID {accountIdentityCluster: %{public}@, groupID: %{public}@, error: %{public}@}", buf, 0x20u);
          }
        }
      }

      (*(*(a1 + 40) + 16))();

      v10 = v13;
    }

    else
    {
      v14 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = v7;
        v22 = 2114;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to get fullClusterFromKeychain {accountGroupkey: %{public}@, error: %{public}@}", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    [IDSCloudKitKeyElectionStore isItemNotFoundError:v6];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10032EB68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = sub_10032E044(a3);
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void sub_10032F990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, os_activity_scope_state_s state, char a61)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10032FA60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 || ([IDSCloudKitKeyElectionStore isItemNotFoundError:v6]& 1) != 0)
  {
    v7 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetched CloudKit account -- Continue {fetchedCloudKitItem: %{private}@}", buf, 0xCu);
    }

    v8 = [v5 groupName];
    v9 = [v5 groupID];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v31 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unexpected existingGroupID class -- Fail {fetchedCloudKitItem: %{private}@}", buf, 0xCu);
      }
    }

    else
    {
      if (!v8 || ([v8 isEqualToString:*(a1 + 48)] & 1) != 0)
      {
        v10 = [*(a1 + 32) keychainElectionStore];
        v11 = *(a1 + 40);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10032FE78;
        v17[3] = &unk_100BD7878;
        v12 = v11;
        v13 = *(a1 + 32);
        v18 = v12;
        v19 = v13;
        v28 = *(a1 + 120);
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v22 = *(a1 + 72);
        v23 = *(a1 + 80);
        v29 = *(a1 + 128);
        v24 = *(a1 + 88);
        v25 = *(a1 + 96);
        v26 = *(a1 + 104);
        v27 = *(a1 + 112);
        [v10 storeFullCluster:v12 completion:v17];

LABEL_19:
        goto LABEL_20;
      }

      v15 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 138543618;
        v31 = v8;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "recordName mismatch -- Fail {recordName: %{public}@, existingIdentityGroupName: %{public}@}", buf, 0x16u);
      }
    }

    [*(a1 + 32) _cleanupFailedElectionWithFullAccountIdentityCluster:*(a1 + 40)];
    (*(*(a1 + 120) + 16))();
    goto LABEL_19;
  }

  v14 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to fetch item from CloudKit -- Fail {fetchError: %{public}@}", buf, 0xCu);
  }

  [*(a1 + 32) _cleanupFailedElectionWithFullAccountIdentityCluster:*(a1 + 40)];
  (*(*(a1 + 120) + 16))();
LABEL_20:
}

void sub_10032FE78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog accountIdentity];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to store cluster in keychain -- Fail {storeError: %{public}@, newCluster: %{public}@}", buf, 0x16u);
    }

    [*(a1 + 40) _cleanupFailedElectionWithFullAccountIdentityCluster:*(a1 + 32)];
    (*(*(a1 + 112) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Stored cluster in Keychain", buf, 2u);
    }

    v10 = objc_alloc_init(IDSGroupServerKeyElectionStoreItem);
    [(IDSGroupServerKeyElectionStoreItem *)v10 setAccountBlob:*(a1 + 48)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setSignature:*(a1 + 56)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setGroupID:*(a1 + 64)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setForwardingTicket:*(a1 + 72)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setParentPg:*(a1 + 120)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setNewPg:*(a1 + 128)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setParentVersion:*(a1 + 80)];
    [(IDSGroupServerKeyElectionStoreItem *)v10 setENID:*(a1 + 88)];
    v11 = [*(a1 + 40) groupServerElectionStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100330110;
    v15[3] = &unk_100BD7850;
    v16 = v10;
    v14 = *(a1 + 32);
    v12 = v14.i64[0];
    v17 = vextq_s8(v14, v14, 8uLL);
    v20 = *(a1 + 112);
    v18 = *(a1 + 96);
    v19 = *(a1 + 104);
    v13 = v10;
    [v11 storeItem:v13 withCompletion:v15];
  }
}

void sub_100330110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[IDSFoundationLog accountIdentity];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to store in group server {groupServerItem: %{public}@, groupServerError: %{public}@", buf, 0x16u);
    }

    v13 = [v9 domain];
    if ([v13 isEqualToString:off_100CB2378])
    {
      [v9 code];
    }

    [*(a1 + 40) _cleanupFailedElectionWithFullAccountIdentityCluster:*(a1 + 48)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Stored cluster in GroupServer {groupServerItem: %{public}@}", buf, 0xCu);
    }

    v15 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "!setState groupServerGroupID=%@", buf, 0xCu);
    }

    v16 = objc_alloc_init(IDSCloudKitKeyElectionStoreItem);
    [v16 setGroupName:*(a1 + 56)];
    [v16 setGroupID:v8];
    v17 = [*(a1 + 40) cloudKitElectionStore];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100330428;
    v19[3] = &unk_100BD7828;
    v20 = v16;
    v24 = *(a1 + 72);
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v23 = v8;
    v18 = v16;
    [v17 storeAccountIdentityItem:v18 withCompletion:v19];
  }
}

void sub_100330428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to save identityItem to CloudKit -- Fail {cloudKitItem: %{public}@, cloudKitSetError: %{public}@}", &v15, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    if (!*(a1 + 48))
    {
      v10 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 56);
        v15 = 138543618;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating newCluster groupID {newCluster: %{public}@, groupID: %{public}@}", &v15, 0x16u);
      }

      v13 = [*(a1 + 40) clusterByUpdatingGroupID:*(a1 + 56) error:0];

      v9 = v13;
    }

    v14 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Stored Cluster in CloudKit -- Done {cluster: %{public}@}", &v15, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100330D08(id a1)
{
  qword_100CBCE28 = objc_alloc_init(IDSRegistrationKeyManager);

  _objc_release_x1();
}

void sub_100330D88(id a1)
{
  v1 = +[IDSRegistrationKeyManager sharedInstance];
  [v1 _loadIfNeeded:1];
}

void sub_10033689C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSRegistrationKeyManager notified of time change", v4, 2u);
    }

    [a2 _retryGenerationIfNeeded];
  }
}

void sub_100337370(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v2 = [*(a1 + 32) config];
  v3 = [v2 unregisteredIdentityContainer];
  if (v3)
  {

    [*(*(a1 + 32) + 8) unlock];
LABEL_4:
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posting notification of identity regeneration", buf, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 __mainThreadPostNotificationName:@"__kIDSRegistrationKeyManagerPrivateIdentityGeneratedNotification" object:*(a1 + 32)];
    goto LABEL_7;
  }

  v4 = [*(*(a1 + 32) + 80) hasUnregisteredIdentity];

  [*(*(a1 + 32) + 8) unlock];
  if (v4)
  {
    goto LABEL_4;
  }

  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping notification of identity regeneration; we've already done it", v7, 2u);
  }

LABEL_7:
}

void sub_100337664(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCheckUnregisteredKTData] & 1) == 0)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v3 = +[NSNotificationCenter defaultCenter];
    [v3 __mainThreadPostNotificationName:IDSRegistrationKeyManagerKTRegDataUpdatedNotification object:*(a1 + 32)];
    goto LABEL_9;
  }

  [*(*(a1 + 32) + 8) lock];
  v2 = [*(*(a1 + 32) + 120) hasUnregisteredKTData];
  [*(*(a1 + 32) + 8) unlock];
  v3 = +[IMRGLog registration];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v7 = 0;
      v5 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting notification of unregistered KT data", v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping notification of unregistered KT data; we've already done it", v6, 2u);
  }

LABEL_9:
}

void sub_100339C68(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0 && (*(a1 + 41) & 1) == 0 && *(a1 + 42) != 1)
  {
    return;
  }

  v2 = [*(a1 + 32) publicMessageProtectionDataToRegisterForClassA];
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v3 = [*(a1 + 32) publicMessageProtectionDataToRegisterForClassC];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) publicMessageProtectionDataToRegisterForClassD];
    if (v5)
    {
      v6 = v5;
      v7 = +[IDSPairingManager sharedInstance];
      v8 = [v7 pairedDevicePublicKey];
      if (v8)
      {
        v9 = v8;
        v10 = +[IDSPairingManager sharedInstance];
        v11 = [v10 pairedDevicePublicClassAKey];
        if (v11)
        {
          v12 = v11;
          v13 = +[IDSPairingManager sharedInstance];
          v14 = [v13 pairedDevicePublicClassCKey];

          if (v14)
          {
            v15 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We saved our keys, resuming OTR session negotiation", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }

            v16 = +[IDSOTRController sharedInstance];
            [v16 resumeSessionNegotiation];
          }

          return;
        }
      }
    }
  }
}

void sub_10033B414(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = +[IMRGLog registration];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already scheduled timer for purge of previous identity", &v12, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v12 = 134217984;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling timer for purge of previous identity {delay: %f}", &v12, 0xCu);
    }

    v6 = [IMTimer alloc];
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v3 = im_primary_queue();
    v9 = [v6 initWithTimeInterval:@"com.apple.identityservicesd.identity-purge" name:0 shouldWake:v8 target:"_purgePreviousIdentityTimerFired" selector:0 userInfo:v3 queue:v7];
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10033B6F8(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10033B7D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = +[IMRGLog registration];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already scheduled timer for purge of previous identity", &v12, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v12 = 134217984;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling timer for regneration of registered identity {delay: %f}", &v12, 0xCu);
    }

    v6 = [IMTimer alloc];
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v3 = im_primary_queue();
    v9 = [v6 initWithTimeInterval:@"com.apple.identityservicesd.identity-regenerate" name:0 shouldWake:v8 target:"_regenerateIdentityTimerFired" selector:0 userInfo:v3 queue:v7];
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;
  }
}

void sub_10033BB1C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

void sub_10033C430(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_10033C484(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10033C4C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void sub_10033C84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033C874(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = IMWeakLinkSymbol();
    if (v3)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = (*(*(a1 + 32) + 8) + 40);

    objc_storeStrong(v5, v4);
  }
}

uint64_t sub_10033CA20(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033CAF0;
  v6[3] = &unk_100BD7A68;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10001E6DC(v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10033CAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CAF0(uint64_t a1)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10033CB34(const __CFString *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      if (a2)
      {
        v6 = @"SELECT COUNT(1) FROM outgoing_message WHERE guid = ? AND alternate_guid = ? AND pending_delete = 0 LIMIT 1;";
      }

      else
      {
        v6 = @"SELECT COUNT(1) FROM outgoing_message WHERE guid = ? AND pending_delete = 0 LIMIT 1;";
      }

      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10033CC44;
      v8[3] = &unk_100BD7A90;
      v8[5] = a1;
      v8[6] = a2;
      v8[4] = &v9;
      sub_100018E48(v6, v8, v5);
      LOBYTE(a1) = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      LOBYTE(a1) = 0;
    }
  }

  return a1 & 1;
}

void sub_10033CC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CC44(uint64_t a1)
{
  CSDBSqliteBindTextFromCFString();
  if (*(a1 + 48))
  {
    CSDBSqliteBindTextFromCFString();
  }

  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

uint64_t sub_10033CCB0(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033CD7C;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10033CD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CD7C(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices();

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_10033CDF8(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033CEC4;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10033CEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CEC4(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementCopyStringsForColumnsAtIndices();

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_10033CF40(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033D028;
  v6[3] = &unk_100BD7B30;
  v10 = a3;
  v8 = &v11;
  v9 = a1;
  v3 = a2;
  v7 = v3;
  sub_10000B8B8(v6, v3);
  v4 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_10033D028(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 56))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE pending_delete = 0 AND guid = ? ");
  v5 = CSDBSqliteDatabaseStatementForReading();
  if (v5)
  {
    if (*(v5 + 8))
    {
      CSDBSqliteBindTextFromCFString();
      v6 = CSDBRecordStoreProcessStatement();
      *(*(*(a1 + 40) + 8) + 24) = sub_100010150(v6, *(a1 + 32));
      CSDBSqliteStatementReset();
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10033D130(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033D228;
  v7[3] = &unk_100BD7B58;
  v12 = a4;
  v10 = a2;
  v11 = a1;
  v9 = &v13;
  v4 = a3;
  v8 = v4;
  sub_10000B8B8(v7, v4);
  v5 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v5;
}

void sub_10033D228(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 64))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND account_guid = ? ");
  if (*(a1 + 48))
  {
    v5 = @"AND local_destination_device_uuid = ? ";
  }

  else
  {
    v5 = @"AND local_destination_device_uuid is null ";
  }

  CFStringAppend(v3, v5);
  v6 = CSDBSqliteDatabaseStatementForReading();
  if (v6 && *(v6 + 8))
  {
    CSDBSqliteBindTextFromCFString();
    if (*(a1 + 48))
    {
      CSDBSqliteBindTextFromCFString();
    }

    v7 = CSDBRecordStoreProcessStatement();
    *(*(*(a1 + 40) + 8) + 24) = sub_100010150(v7, *(a1 + 32));
    CSDBSqliteStatementReset();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10033D364(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = a1;
  v9 = a4;
  if ([v8 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10033D490;
    v12[3] = &unk_100BD7BA8;
    v17 = a5;
    v15 = &v18;
    v16 = a3;
    v13 = v8;
    v14 = v9;
    sub_10000B8B8(v12, v14);
    v10 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10033D478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033D490(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 64))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND account_guid ");
  [*(a1 + 32) count];
  v5 = CSDBGenerateInClauseForCount();
  CFStringAppend(v3, v5);
  CFStringAppend(v3, @"LIMIT ? ");
  v6 = CSDBSqliteDatabaseStatementForReading();
  if (v6)
  {
    if (*(v6 + 8))
    {
      CSDBSqliteBindTextFromCFArrayOfCFStrings();
      CSDBSqliteBindInt64();
      v7 = CSDBRecordStoreProcessStatement();
      *(*(*(a1 + 48) + 8) + 24) = sub_100010150(v7, *(a1 + 40));
      CSDBSqliteStatementReset();
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10033D5CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v11 = a1;
  v12 = a5;
  if ([v11 count])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10033D710;
    v15[3] = &unk_100BD7BD0;
    v22 = a6;
    v19 = a3;
    v20 = a2;
    v21 = a4;
    v16 = v11;
    v18 = &v23;
    v17 = v12;
    sub_10000B8B8(v15, v17);
    v13 = v24[3];

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10033D6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033D710(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 80))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND account_guid ");
  [*(a1 + 32) count];
  v5 = CSDBGenerateInClauseForCount();
  CFStringAppend(v3, v5);
  CFStringAppend(v3, @"AND priority = ? ");
  if (*(a1 + 56))
  {
    v6 = @"AND local_destination_device_uuid = ? ";
  }

  else
  {
    v6 = @"AND local_destination_device_uuid is null ";
  }

  CFStringAppend(v3, v6);
  CFStringAppend(v3, @"LIMIT ? ");
  v7 = CSDBSqliteDatabaseStatementForReading();
  if (v7 && *(v7 + 8))
  {
    CSDBSqliteBindTextFromCFArrayOfCFStrings();
    CSDBSqliteBindInt64();
    if (*(a1 + 56))
    {
      CSDBSqliteBindTextFromCFString();
    }

    CSDBSqliteBindInt64();
    v8 = CSDBRecordStoreProcessStatement();
    *(*(*(a1 + 48) + 8) + 24) = sub_100010150(v8, *(a1 + 40));
    CSDBSqliteStatementReset();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10033D89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, _BYTE *a8)
{
  v15 = a1;
  v16 = a5;
  if ([v15 count])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10033DA30;
    v19[3] = &unk_100BD7BF8;
    v28 = a6;
    v24 = a3;
    v25 = a2;
    v26 = a7;
    v27 = a4;
    v20 = v15;
    v22 = &v33;
    v21 = v16;
    v23 = &v29;
    sub_10000B8B8(v19, v21);
    if (a8)
    {
      *a8 = *(v30 + 24);
    }

    v17 = v34[3];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_10033DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_10033DA30(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 96))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND account_guid ");
  [*(a1 + 32) count];
  v5 = CSDBGenerateInClauseForCount();
  CFStringAppend(v3, v5);
  CFStringAppend(v3, @"AND priority = ? ");
  CFStringAppend(v3, @"AND message_type = ? ");
  if (*(a1 + 64))
  {
    v6 = @"AND local_destination_device_uuid = ? ";
  }

  else
  {
    v6 = @"AND local_destination_device_uuid is null ";
  }

  CFStringAppend(v3, v6);
  CFStringAppend(v3, @"LIMIT ? ");
  v7 = CSDBSqliteDatabaseStatementForReading();
  if (!v7 || !*(v7 + 8))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  if (*(a1 + 64))
  {
    CSDBSqliteBindTextFromCFString();
  }

  CSDBSqliteBindInt64();
  v8 = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 48) + 8) + 24) = sub_100010150(v8, *(a1 + 40));
  CSDBSqliteStatementReset();
  if (v8)
  {
    CFRelease(v8);
  }

  if (v3)
  {
LABEL_14:

    CFRelease(v3);
  }
}

uint64_t sub_10033DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, int a8)
{
  v15 = a7;
  if (a4)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(v31[3], @"SELECT DISTINCT ");
    if (a8)
    {
      v16 = @"ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason ";
    }

    else
    {
      v16 = @"ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason ";
    }

    CFStringAppend(v31[3], v16);
    CFStringAppend(v31[3], @" FROM(  SELECT ");
    CFStringAppend(v31[3], v16);
    CFStringAppend(v31[3], @"  FROM outgoing_message o   WHERE priority = ? AND pending_delete = 0 AND is_sent = 0 AND account_guid = ? AND (bypass_duet = ? OR bypass_duet = ?) ");
    if (a6)
    {
      v17 = @"AND local_destination_device_uuid = ? ";
    }

    else
    {
      v17 = @"AND local_destination_device_uuid is null ";
    }

    CFStringAppend(v31[3], v17);
    CFStringAppend(v31[3], @"  ORDER BY ROWID ASC   LIMIT ? AS ofilt WHERE (SELECT SUM(stored_size) FROM outgoing_message s where s.ROWID <= ofilt.ROWID) <= ? UNION SELECT "));
    CFStringAppend(v31[3], v16);
    CFStringAppend(v31[3], @" FROM(  SELECT ");
    CFStringAppend(v31[3], v16);
    CFStringAppend(v31[3], @" FROM outgoing_message   WHERE priority = ? AND pending_delete = 0 AND is_sent = 0 AND account_guid = ? AND (bypass_duet = ? OR bypass_duet = ?) ");
    CFStringAppend(v31[3], v17);
    CFStringAppend(v31[3], @"  ORDER BY ROWID ASC LIMIT 1 "));
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10033DE80;
    v20[3] = &unk_100BD7C20;
    v22 = &v30;
    v24 = a3;
    v25 = a4;
    v29 = a5;
    v26 = a6;
    v27 = a1;
    v28 = a2;
    v21 = v15;
    v23 = &v34;
    sub_10000B8B8(v20, v21);
    v18 = v35[3];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_10033DE80(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseStatementForReading();
  if (v2 && *(v2 + 8))
  {
    CSDBSqliteBindInt64();
    CSDBSqliteBindTextFromCFString();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    if (*(a1 + 72))
    {
      CSDBSqliteBindTextFromCFString();
    }

    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteBindTextFromCFString();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    if (*(a1 + 72))
    {
      CSDBSqliteBindTextFromCFString();
    }

    v3 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v3);
    if (Count << 32)
    {
      v5 = 0;
      v6 = Count;
      if (Count <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = Count;
      }

      while (1)
      {
        CFArrayGetValueAtIndex(v3, v5);
        ID = CSDBRecordGetID();
        v9 = sub_10001F054(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        v10 = v9;
        if (!*(*(*(a1 + 48) + 8) + 24))
        {
          break;
        }

        if (v9)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (v7 == ++v5)
        {
          goto LABEL_18;
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v6, &kCFTypeArrayCallBacks);
      if (!v10)
      {
        goto LABEL_14;
      }

LABEL_13:
      CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v10);
      CFRelease(v10);
      goto LABEL_14;
    }

LABEL_18:
    CSDBSqliteStatementReset();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t sub_10033E098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, int a8, void *a9)
{
  v16 = a7;
  v17 = a9;
  if (a4)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(v36[3], @"SELECT DISTINCT ");
    if (a8)
    {
      v18 = @"ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason ";
    }

    else
    {
      v18 = @"ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason ";
    }

    CFStringAppend(v36[3], v18);
    CFStringAppend(v36[3], @" FROM(  SELECT ");
    CFStringAppend(v36[3], v18);
    CFStringAppend(v36[3], @"  FROM outgoing_message o   WHERE priority = ? AND pending_delete = 0 AND is_sent = 0 AND account_guid = ? AND (bypass_duet = ? OR bypass_duet = ?) ");
    if (a6)
    {
      v19 = @"AND local_destination_device_uuid = ? ";
    }

    else
    {
      v19 = @"AND local_destination_device_uuid is null ";
    }

    CFStringAppend(v36[3], v19);
    CFStringAppend(v36[3], @"  ORDER BY ROWID ASC   LIMIT ? AS ofilt WHERE (SELECT SUM(stored_size) FROM outgoing_message s where s.ROWID <= ofilt.ROWID) <= ? UNION SELECT "));
    CFStringAppend(v36[3], v18);
    CFStringAppend(v36[3], @" FROM(  SELECT ");
    CFStringAppend(v36[3], v18);
    CFStringAppend(v36[3], @" FROM outgoing_message   WHERE priority = ? AND pending_delete = 0 AND is_sent = 0 AND account_guid = ? AND (bypass_duet = ? OR bypass_duet = ?) ");
    CFStringAppend(v36[3], v19);
    if ([v17 count])
    {
      CFStringAppend(v36[3], @"AND message_type ");
      v20 = v36[3];
      [v17 count];
      v21 = CSDBGenerateInClauseForCount();
      CFStringAppend(v20, v21);
    }

    CFStringAppend(v36[3], @"  ORDER BY ROWID ASC LIMIT 1 "));
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10033E390;
    v24[3] = &unk_100BD7C48;
    v27 = &v35;
    v29 = a3;
    v30 = a4;
    v34 = a5;
    v31 = a6;
    v32 = a1;
    v33 = a2;
    v25 = v17;
    v26 = v16;
    v28 = &v39;
    sub_10000B8B8(v24, v26);
    v22 = v40[3];

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_10033E390(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseStatementForReading();
  if (v2 && *(v2 + 8))
  {
    CSDBSqliteBindInt64();
    CSDBSqliteBindTextFromCFString();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    if (*(a1 + 80))
    {
      CSDBSqliteBindTextFromCFString();
    }

    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteBindTextFromCFString();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    if (*(a1 + 80))
    {
      CSDBSqliteBindTextFromCFString();
    }

    if ([*(a1 + 32) count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = *(a1 + 32);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          v7 = 0;
          do
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v17 + 1) + 8 * v7) longLongValue];
            CSDBSqliteBindInt64();
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v5);
      }
    }

    v8 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v8);
    if (Count << 32)
    {
      v10 = 0;
      v11 = Count;
      if (Count <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = Count;
      }

      while (1)
      {
        CFArrayGetValueAtIndex(v8, v10);
        ID = CSDBRecordGetID();
        v14 = sub_10001F054(kCFAllocatorDefault, ID, 0, *(a1 + 40));
        v15 = v14;
        if (!*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v14)
        {
          goto LABEL_22;
        }

LABEL_23:
        if (v12 == ++v10)
        {
          goto LABEL_27;
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v11, &kCFTypeArrayCallBacks);
      if (!v15)
      {
        goto LABEL_23;
      }

LABEL_22:
      CFArrayAppendValue(*(*(*(a1 + 56) + 8) + 24), v15);
      CFRelease(v15);
      goto LABEL_23;
    }

LABEL_27:
    CSDBSqliteStatementReset();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v16 = *(*(*(a1 + 48) + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

uint64_t sub_10033E680(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, char a7)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10033E798;
  v10[3] = &unk_100BD7C70;
  v17 = a7;
  v18 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a2;
  v16 = a1;
  v7 = a6;
  v11 = v7;
  v12 = &v19;
  sub_10000B8B8(v10, v7);
  v8 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v8;
}

void sub_10033E780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033E798(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 80))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE priority = ? AND is_sent = 0 AND pending_delete = 0 ");
  if (*(a1 + 48))
  {
    CFStringAppend(v3, @"AND account_guid = ? ");
  }

  if (*(a1 + 81) == 1)
  {
    CFStringAppend(v3, @"AND bypass_duet = 0 ");
  }

  if (*(a1 + 56))
  {
    v5 = @"AND local_destination_device_uuid = ? ";
  }

  else
  {
    v5 = @"AND local_destination_device_uuid is null ";
  }

  CFStringAppend(v3, v5);
  CFStringAppend(v3, @"ORDER BY ROWID ASC LIMIT ?");
  v6 = CSDBSqliteDatabaseStatementForReading();
  if (v6 && *(v6 + 8))
  {
    CSDBSqliteBindInt64();
    if (*(a1 + 48))
    {
      CSDBSqliteBindTextFromCFString();
    }

    if (*(a1 + 56))
    {
      CSDBSqliteBindTextFromCFString();
    }

    CSDBSqliteBindInt64();
    v7 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v7);
    if (Count << 32)
    {
      v9 = 0;
      v10 = Count;
      if (Count <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = Count;
      }

      while (1)
      {
        CFArrayGetValueAtIndex(v7, v9);
        ID = CSDBRecordGetID();
        v13 = sub_10001F054(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        v14 = v13;
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        if (v13)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (v11 == ++v9)
        {
          goto LABEL_28;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v10, &kCFTypeArrayCallBacks);
      if (!v14)
      {
        goto LABEL_24;
      }

LABEL_23:
      CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 24), v14);
      CFRelease(v14);
      goto LABEL_24;
    }

LABEL_28:
    CSDBSqliteStatementReset();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10033EA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, char a7, void *a8)
{
  v15 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10033EB44;
  v20[3] = &unk_100BD7C98;
  v28 = a7;
  v29 = a4;
  v24 = a3;
  v25 = a5;
  v16 = a8;
  v21 = v16;
  v26 = a2;
  v27 = a1;
  v17 = v15;
  v22 = v17;
  v23 = &v30;
  sub_10000B8B8(v20, v17);
  v18 = v31[3];

  _Block_object_dispose(&v30, 8);
  return v18;
}

void sub_10033EB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033EB44(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 88))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE priority = ? AND is_sent = 0 AND pending_delete = 0 ");
  if (*(a1 + 56))
  {
    CFStringAppend(v3, @"AND account_guid = ? ");
  }

  if (*(a1 + 89) == 1)
  {
    CFStringAppend(v3, @"AND bypass_duet = 0 ");
  }

  if (*(a1 + 64))
  {
    v5 = @"AND local_destination_device_uuid = ? ";
  }

  else
  {
    v5 = @"AND local_destination_device_uuid is null ";
  }

  CFStringAppend(v3, v5);
  if ([*(a1 + 32) count])
  {
    CFStringAppend(v3, @"AND message_type ");
    [*(a1 + 32) count];
    v6 = CSDBGenerateInClauseForCount();
    CFStringAppend(v3, v6);
  }

  CFStringAppend(v3, @"ORDER BY ROWID ASC LIMIT ?");
  v7 = CSDBSqliteDatabaseStatementForReading();
  if (v7 && *(v7 + 8))
  {
    CSDBSqliteBindInt64();
    if (*(a1 + 56))
    {
      CSDBSqliteBindTextFromCFString();
    }

    if (*(a1 + 64))
    {
      CSDBSqliteBindTextFromCFString();
    }

    if ([*(a1 + 32) count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v21 + 1) + 8 * v12) longLongValue];
            CSDBSqliteBindInt64();
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }
    }

    CSDBSqliteBindInt64();
    v13 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v13);
    if (Count << 32)
    {
      v15 = 0;
      v16 = Count;
      if (Count <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = Count;
      }

      while (1)
      {
        CFArrayGetValueAtIndex(v13, v15);
        ID = CSDBRecordGetID();
        v19 = sub_10001F054(kCFAllocatorDefault, ID, 0, *(a1 + 40));
        v20 = v19;
        if (!*(*(*(a1 + 48) + 8) + 24))
        {
          break;
        }

        if (v19)
        {
          goto LABEL_34;
        }

LABEL_35:
        if (v17 == ++v15)
        {
          goto LABEL_39;
        }
      }

      *(*(*(a1 + 48) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v16, &kCFTypeArrayCallBacks);
      if (!v20)
      {
        goto LABEL_35;
      }

LABEL_34:
      CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v20);
      CFRelease(v20);
      goto LABEL_35;
    }

LABEL_39:
    CSDBSqliteStatementReset();
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_10033EE90(uint64_t a1, char a2, void *a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10033EF08;
  v3[3] = &unk_100BD7CB8;
  v4 = a2;
  v3[4] = a1;
  sub_100011868(@"UPDATE outgoing_message SET is_sent = ? WHERE guid = ?", v3, a3);
}

uint64_t sub_10033EF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10033EF78(void *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033F014;
  v4[3] = &unk_100BD7D20;
  v5 = a2;
  v3 = v5;
  sub_100011868(@"UPDATE outgoing_message SET is_sent = 0 WHERE local_destination_device_uuid = ?", v4, a1);
}

uint64_t sub_10033F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10033F054(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 count])
  {
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(Mutable, @"UPDATE outgoing_message SET local_destination_device_uuid = ? WHERE is_sent = 0 AND pending_delete = 0 AND account_guid ");
    [v5 count];
    v9 = CSDBGenerateInClauseForCount();
    CFStringAppend(Mutable, v9);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10033F16C;
    v10[3] = &unk_100BD7D48;
    v11 = v6;
    v12 = v5;
    sub_100011868(Mutable, v10, v7);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t sub_10033F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFArrayOfCFStrings();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10033F1BC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  [v5 count];
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"UPDATE outgoing_message SET pending_delete = 1 WHERE local_destination_device_uuid = ? AND account_guid ");
  [v5 count];
  v9 = CSDBGenerateInClauseForCount();
  CFStringAppend(Mutable, v9);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10033F2D4;
  v12[3] = &unk_100BD7D48;
  v13 = v6;
  v14 = v5;
  v10 = v5;
  v11 = v6;
  sub_100011868(Mutable, v12, v7);

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t sub_10033F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFArrayOfCFStrings();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10033F324(int a1, void *a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10033F390;
  v2[3] = &unk_100BD7D90;
  v3 = a1;
  sub_10000B8B8(v2, a2);
}

uint64_t sub_10033F3A8(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1431655766;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033F478;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10033F460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033F478(uint64_t a1)
{
  result = CSDBSqliteConnectionIntegerForProperty();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10033F4B4(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1431655766;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033F584;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10033F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033F584(uint64_t a1)
{
  result = CSDBSqliteDatabaseCheckpointAndVacuum();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10033F5B8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 dataProtectionClass];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 dataProtectionClass] == v8)
        {
          v15 = [v14 guid];
          v16 = [v14 alternateGUID];
          sub_100018C94(v15, v16, v6, v7);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

void sub_10033F730(uint64_t a1)
{
  [*(a1 + 32) ensureDatabaseIsInitialized];
  if (*(a1 + 48))
  {
    v2 = ", alternate_guid) VALUES (?, ?, ?)";
  }

  else
  {
    v2 = ") VALUES (?, ?)";
  }

  v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"INSERT OR IGNORE INTO outgoing_messages_to_delete (data_protection_class, guid%s;"), v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033F834;
  v6[3] = &unk_100BD7DF8;
  v7 = *(a1 + 40);
  v8 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  sub_100011868(v3, v6, *(a1 + 32));
  CFRelease(v3);
  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t sub_10033F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) dataProtectionClass];
  CSDBSqliteBindInt();
  CSDBSqliteBindTextFromCFString();
  v7 = *(a1 + 48);
  if (v7)
  {
    CSDBSqliteBindTextFromCFString();
  }

  return _CSDBSqliteStatementPerform(a4, v7, v6);
}

void sub_10033F89C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10033F91C;
    v2[3] = &unk_100BD7E40;
    v2[4] = a1;
    sub_100011868(@"DELETE FROM outgoing_message WHERE account_guid = ? ", v2, a2);
  }
}

uint64_t sub_10033F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_10033F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  v66 = a58;
  if (a1)
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10033FCF8;
    v68[3] = &unk_100BD7E90;
    v70 = a1;
    v67 = v66;
    v72 = a3;
    v73 = a4;
    v74 = a5;
    v75 = a6;
    v76 = a7;
    v77 = a8;
    v78 = a9;
    v79 = a10;
    v80 = a11;
    v81 = a12;
    v82 = a13;
    v83 = a14;
    v84 = a15;
    v85 = a16;
    v86 = a17;
    v87 = a18;
    v88 = a19;
    v89 = a20;
    v90 = a21;
    v91 = a22;
    v92 = a23;
    v93 = a24;
    v94 = a25;
    v95 = a26;
    v96 = a27;
    v97 = a28;
    v69 = v66;
    v71 = a2;
    v98 = a29;
    v99 = a30;
    v100 = a31;
    v101 = a32;
    v102 = a33;
    v103 = a34;
    v104 = a35;
    v105 = a36;
    v106 = a37;
    v107 = a38;
    v108 = a39;
    v109 = a40;
    v110 = a41;
    v111 = a42;
    v112 = a43;
    v113 = a44;
    v114 = a45;
    v115 = a46;
    v116 = a47;
    v117 = a48;
    v118 = a49;
    v119 = a50;
    v120 = a51;
    v121 = a52;
    v122 = a53;
    v123 = a54;
    v124 = a55;
    v125 = a56;
    v126 = a57;
    sub_1006B73F0(a1 + 16, v68, v69);

    v66 = v67;
  }
}

void sub_10033FCF8(uint64_t a1)
{
  v2 = sub_10001F108(*(*(a1 + 40) + 24), *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordGetID();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 160))
    {
      **(a1 + 160) = CSDBRecordGetProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordGetProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordGetProperty();
    }

    if (*(a1 + 208))
    {
      **(a1 + 208) = CSDBRecordGetProperty();
    }

    if (*(a1 + 216))
    {
      **(a1 + 216) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 224))
    {
      **(a1 + 224) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 232))
    {
      **(a1 + 232) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 240))
    {
      **(a1 + 240) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 248))
    {
      **(a1 + 248) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 256))
    {
      **(a1 + 256) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 264))
    {
      **(a1 + 264) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 272))
    {
      **(a1 + 272) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 280))
    {
      **(a1 + 280) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 288))
    {
      **(a1 + 288) = CSDBRecordGetProperty();
    }

    if (*(a1 + 296))
    {
      **(a1 + 296) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 304))
    {
      **(a1 + 304) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 312))
    {
      **(a1 + 312) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 320))
    {
      **(a1 + 320) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 328))
    {
      **(a1 + 328) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 336))
    {
      **(a1 + 336) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 344))
    {
      **(a1 + 344) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 352))
    {
      **(a1 + 352) = CSDBRecordGetProperty();
      **(a1 + 352) = CSDBRecordGetProperty();
    }

    if (*(a1 + 360))
    {
      **(a1 + 360) = CSDBRecordGetProperty();
    }

    if (*(a1 + 368))
    {
      **(a1 + 368) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 376))
    {
      **(a1 + 376) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 384))
    {
      **(a1 + 384) = CSDBRecordGetProperty();
    }

    if (*(a1 + 392))
    {
      **(a1 + 392) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 400))
    {
      **(a1 + 400) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 408))
    {
      **(a1 + 408) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 416))
    {
      **(a1 + 416) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 424))
    {
      **(a1 + 424) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 432))
    {
      **(a1 + 432) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 440))
    {
      **(a1 + 440) = CSDBRecordGetProperty();
    }

    if (*(a1 + 448))
    {
      **(a1 + 448) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 456))
    {
      **(a1 + 456) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 464))
    {
      **(a1 + 464) = CSDBRecordGetProperty();
    }

    if (*(a1 + 472))
    {
      **(a1 + 472) = CSDBRecordGetProperty();
    }

    if (*(a1 + 480))
    {
      **(a1 + 480) = CSDBRecordGetProperty();
    }

    if (*(a1 + 488))
    {
      **(a1 + 488) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

uint64_t sub_100340528()
{
  v0 = 0;
  qword_100CBCE40 = _CFRuntimeRegisterClass();
  v1 = &off_100BD7F10;
  do
  {
    v1 += 5;
    result = CSDBRecordIndexOfPropertyNamed();
    dword_100CBCE48[v0++] = result;
  }

  while (v0 != 55);
  return result;
}

CFStringRef sub_1003405B4(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<IDSOutgoingMessageRecord %p [%p]>{}", a1, v3);
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

void sub_100340B7C(uint64_t a1)
{
  [*(a1 + 32) doubleValue];
  v3 = v2;
  [*(a1 + 40) doubleValue];
  v55 = llround((v3 - v4) * 1000.0);
  [*(a1 + 48) doubleValue];
  v6 = v5;
  [*(a1 + 40) doubleValue];
  v54 = llround((v6 - v7) * 1000.0);
  [*(a1 + 56) doubleValue];
  v9 = v8;
  [*(a1 + 48) doubleValue];
  v11 = llround((v9 - v10) * 1000.0);
  [*(a1 + 64) doubleValue];
  v13 = v12;
  [*(a1 + 32) doubleValue];
  v15 = llround((v13 - v14) * 1000.0);
  [*(a1 + 48) doubleValue];
  v17 = v16;
  [*(a1 + 64) doubleValue];
  v19 = llround((v17 - v18) * 1000.0);
  [*(a1 + 56) doubleValue];
  v21 = v20;
  [*(a1 + 64) doubleValue];
  v23 = llround((v21 - v22) * 1000.0);
  [*(a1 + 56) doubleValue];
  v25 = v24;
  [*(a1 + 72) doubleValue];
  v27 = llround((v25 - v26) * 1000.0);
  v28 = v15 & ~(v15 >> 63);
  v29 = v11 & ~(v11 >> 63);
  v30 = v27 & ~(v27 >> 63);
  v31 = *(a1 + 56);
  if (v31)
  {
    v32 = v27 & ~(v27 >> 63);
  }

  else
  {
    v32 = -1;
  }

  v53 = v23 & ~(v23 >> 63);
  if (v31)
  {
    v33 = v23 & ~(v23 >> 63);
  }

  else
  {
    v33 = -1;
  }

  if (v31)
  {
    v34 = v29;
  }

  else
  {
    v34 = -1;
  }

  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 96);
    *buf = 134219778;
    if (v36)
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    v57 = v55;
    v58 = 2048;
    v59 = v54;
    v60 = 2048;
    v61 = v34;
    v62 = 2048;
    v63 = v28;
    v64 = 2048;
    v65 = v19;
    v66 = 2048;
    v67 = v33;
    v68 = 2048;
    v69 = v32;
    v70 = 2112;
    v71 = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "IDSDeviceConnectionForService - clientInitToDaemonOpenSocket %lldms, clientInitToClientOpenSocketHandler %lldms, clientOpenSocketHandlerToIncomingFirstPacket %lldms, daemonOpenSocketToDaemonCompletionHandler %lldms, daemonCompletionHandlerToClientOpenSocketCompletion %lldms, daemonCompletionHandlerToIncomingFirstPacket %lldms, connectionInitToIncomingFirstPacket %lldms, success %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v38 = *(a1 + 96) ? @"YES" : @"NO";
    v51 = v32;
    v52 = v38;
    v49 = v19;
    v50 = v33;
    v47 = v34;
    v48 = v28;
    v45 = v55;
    v46 = v54;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v39 = @"NO";
      if (*(a1 + 96))
      {
        v39 = @"YES";
      }

      v51 = v32;
      v52 = v39;
      v49 = v19;
      v50 = v33;
      v47 = v34;
      v48 = v28;
      v45 = v55;
      v46 = v54;
      _IDSLogV();
    }
  }

  v40 = [*(a1 + 80) _metricContainerForMetricType:{2555932, v45, v46, v47, v48, v49, v50, v51, v52}];
  if (v40)
  {
    v41 = objc_alloc_init(IMWeakLinkClass());
    v42 = *(a1 + 88);
    if (v42)
    {
      v43 = v31 == 0;
      v44 = [v42 copy];
      [v41 setServiceName:v44];

      [v41 setSuccess:*(a1 + 96)];
      [v41 setClientInitToDaemonOpenSocket:v55];
      [v41 setClientInitToClientOpenSocketHandler:v54];
      [v41 setDaemonOpenSocketToDaemonCompletionHandler:v28];
      [v41 setDaemonCompletionHandlerToClientOpenSocketCompletion:v19];
      if (!v43)
      {
        [v41 setConnectionInitToIncomingFirstPacket:v30];
        [v41 setClientOpenSocketHandlerToIncomingFirstPacket:v29];
        [v41 setDaemonCompletionHandlerToIncomingFirstPacket:v53];
      }

      [*(a1 + 80) _submitAWDMetric:v41 withContainer:v40];
    }
  }
}

void sub_1003418CC(void *a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Fanout %@ contains:\n%@", &v6, 0x20u);
  }
}

void sub_1003439A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "   Public/Private decryption failed with error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = [v3 error];
      _IDSLogV();
    }

    v26 = [*(a1 + 32) previousFullDeviceIdentityContainer];
    if (v26)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using previous full identity: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v20 = v26;
        _IDSLogV();
      }

      v21 = *(a1 + 48);
      v24 = [*(a1 + 56) authenticatedData];
      v7 = [*(a1 + 56) messageType];
      v23 = [*(a1 + 56) guid];
      v25 = [*(a1 + 56) sendingURI];
      v22 = [v25 prefixedURI];
      v8 = [*(a1 + 56) sendingPushToken];
      v9 = [v8 rawToken];
      v10 = [*(a1 + 56) receivingURI];
      v11 = [v10 prefixedURI];
      v12 = [*(a1 + 56) receivingPushToken];
      v13 = [v12 rawToken];
      v14 = [v26 unsealMessage:v21 authenticatedData:v24 messageType:v7 guid:v23 sendingURI:v22 sendingPushToken:v9 receivingURI:v11 receivingPushToken:v13 signedByPublicIdentity:*(a1 + 64) usingIdentityWithIdentifier:*(a1 + 72)];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100343DB4;
      v27[3] = &unk_100BD87D8;
      v28 = *(a1 + 40);
      v29 = v3;
      [v14 registerResultBlock:v27];

      v15 = v28;
    }

    else
    {
      v18 = *(a1 + 40);
      v15 = [v3 error];
      [v18 failWithError:v15];
    }
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = [v3 value];
    [v16 fulfillWithValue:v17];
  }
}

void sub_100343DB4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v5 = [*(a1 + 40) error];
    [v4 failWithError:v5];
  }

  else
  {
    v5 = [v6 value];
    [v4 fulfillWithValue:v5];
  }
}

id sub_10034535C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAggregatableMessages:v3];
  v4 = objc_alloc_init(NSMutableDictionary);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 targetPeerID];
        v12 = [v10 targetToken];
        v13 = [v11 URIByAddingPushToken:v12];

        if (v13)
        {
          [v4 setObject:v10 forKey:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    *buf = 138412290;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing aggregatable messages", buf, 0xCu);
  }

  v19 = [NSString stringWithFormat:@"GUID %@ Message to send per destination:\n%@", *(a1 + 40), v4];
  v16 = v19;
  cut_dispatch_log_queue();
  v17 = [CUTUnsafePromise fulfilledPromiseWithValue:*(a1 + 32)];

  return v17;
}

void sub_1003455E0(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315651;
    v5 = "IDSIMLMessageFactoryComponent.m";
    v6 = 1024;
    v7 = 72;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d %{private}@", &v4, 0x1Cu);
  }
}

void sub_100346704(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100346D10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to setup RTCReporting to report EC metric { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = [v3 error];
      _IDSLogV();
    }
  }

  else
  {
    v6 = [v3 value];
    [v6 sendMessageWithCategory:32 type:97 payload:*(a1 + 32) error:0];
  }
}

void sub_100347B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to setup RTCReporting to report EC metric { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = [v3 error];
      _IDSLogV();
    }
  }

  else
  {
    v6 = [v3 value];
    [v6 sendMessageWithCategory:32 type:97 payload:*(a1 + 32) error:0];
  }
}

void sub_100347C88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = @"YES";
    if (a1[5])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (!a1[6])
    {
      v7 = @"NO";
    }

    v9 = 138413058;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for decryption failure { context: %@, legacySuccess: %@, ECSuccess: %@, error: %@ }", &v9, 0x2Au);
  }
}

void sub_100347D8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for decryption failure { context: %@, secondarySuccess: %@, error: %@ }", &v8, 0x20u);
  }
}

void sub_10034A760(id a1)
{
  dword_100CBCF68 = 4;
  qword_100CBCFB0 = sub_10034A7D0;
  qword_100CBCFB8 = sub_10034AD1C;
  qword_100CBCF40 = objc_alloc_init(IDSClientChannelManager);

  _objc_release_x1();
}

void sub_10034A7D0(uint64_t a1, uint64_t a2)
{
  if (qword_100CBD080 != -1)
  {
    sub_100917248();
  }

  v3 = mach_continuous_time();
  v4 = *&qword_100CBD088;
  v5 = *(a1 + 40);
  v6 = [v5 readHandler];
  if (v6)
  {
    v8 = v6;
    v9 = v4 * v3;
    *&v7 = 134217984;
    v35 = v7;
    v36 = a1;
    while ((*(*(a2 + 24) + 80))())
    {
      v10 = nw_frame_array_first();
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        do
        {
          v13 = v12;
          v12 = nw_frame_array_next();

          v14 = nw_frame_unclaimed_bytes();
          if (qword_100CBD080 != -1)
          {
            sub_10091725C();
          }

          v15 = *&qword_100CBD088 * mach_continuous_time();
          if ([v5 verboseFunctionalLogging])
          {
            v16 = +[IDSFoundationLog ClientChannelManager];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = objc_retainBlock(v8);
              *buf = 134218752;
              v39 = 2863311530;
              v40 = 2048;
              v41 = v17;
              v42 = 2048;
              v43 = v15 - v9;
              v44 = 2048;
              v45 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "processing data (total %lu) from client (handle %p) getInputFrameTime %0.6lf [%013.6lf]", buf, 0x2Au);
            }
          }

          v18 = 2863311530;
          if (v5[8] == 1)
          {
            v19 = __rev16(*v14);
            if (v19)
            {
              v20 = v14 + 1;
            }

            else
            {
              v20 = 0;
            }

            v14 = (v14 + (v19 + 2));
            v18 = (-1431655768 - v19);
          }

          else
          {
            v19 = 0;
            v20 = 0;
          }

          v21 = (*(v8 + 16))(v8, v14, v18, v20, v19, 0);
          if (qword_100CBD080 != -1)
          {
            sub_10091725C();
          }

          v22 = mach_continuous_time();
          v23 = *&qword_100CBD088;
          nw_frame_finalize();
          v24 = v12;

          if (qword_100CBD080 != -1)
          {
            sub_10091725C();
          }

          v25 = mach_continuous_time();
          v26 = *&qword_100CBD088;
          if ([v5 verbosePerformanceLogging])
          {
            v27 = +[IDSFoundationLog ClientChannelManager];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v23 * v22;
              v29 = v26 * v25;
              v30 = COERCE_DOUBLE(objc_retainBlock(v8));
              v31 = v30;
              *buf = 134220034;
              *&v32 = COERCE_DOUBLE(@"NO");
              if (v21)
              {
                *&v32 = COERCE_DOUBLE(@"YES");
              }

              v39 = v18;
              v40 = 2048;
              v41 = v19;
              v42 = 2048;
              v43 = v30;
              v44 = 2112;
              v45 = *&v32;
              v46 = 2048;
              v47 = v36;
              v48 = 2048;
              v49 = a2;
              v50 = 2048;
              v51 = v28 - v15;
              v52 = 2048;
              v53 = v29 - v28;
              v54 = 2048;
              v55 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "processing data (total %lu metadata %lu) from client (handle %p) (success %@) protocol %p output_handler %p readHandlerTime %0.6lf finalizeTime %0.6lf [%013.6lf]", buf, 0x5Cu);
            }
          }

          v11 = v12;
        }

        while (v12);
      }

      v5 = *(v36 + 40);
      v8 = [v5 readHandler];
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    v33 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_retainBlock(v8);
      *buf = v35;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "input_available but no frames (handle %p)", buf, 0xCu);
    }
  }

  else
  {
LABEL_32:
    v8 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "input_available but no readHandler", buf, 2u);
    }
  }
}

void sub_10034AD1C(uint64_t a1, uint64_t a2)
{
  v4 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    v6 = a1;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "output available protocol %p output_handler %p", &v5, 0x16u);
  }
}

uint64_t sub_10034B5D4(int a1, unsigned __int16 **a2, void *a3, unsigned int *a4)
{
  if (!a1)
  {
    *a3 = 0;
    *a4 = 0;
    return 1;
  }

  v5 = a2[2];
  if (v5 > 1)
  {
    v8 = *a2;
    v9 = __rev16(**a2);
    *a4 = v9;
    if (v9)
    {
      if (v9 > v5 - 2)
      {
        v10 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *a4;
          *buf = 67109120;
          LODWORD(v14) = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "metadataSize is bigger than the actual packet buffer size (%u)", buf, 8u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport();
            result = _IDSShouldLog();
            if (result)
            {
              goto LABEL_17;
            }
          }
        }

        return result;
      }

      v12 = v8 + 2;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
    IDSLinkPacketBufferAddBufferStart();
    return 1;
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v5 & 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "data should have metadata but not enough bytes (%lu)", buf, 0xCu);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport();
      result = _IDSShouldLog();
      if (result)
      {
LABEL_17:
        _IDSLogV();
        return 0;
      }
    }
  }

  return result;
}

void sub_10034BE94(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[9])
  {

    IDSTransportThreadRemoveSocket();
    return;
  }

  v2 = v1;
  v3 = &unk_100CBD000;
  if (([v2 verboseFunctionalLogging] & 1) != 0 || objc_msgSend(v2, "verbosePerformanceLogging"))
  {
    if (qword_100CBD080 != -1)
    {
      sub_100917248();
    }

    v4 = *&qword_100CBD088 * mach_continuous_time();
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0.0;
  }

  v6 = os_channel_available_slot_count();
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v38 = v2;
    while (1)
    {
      v9 = 0.0;
      if (v5)
      {
        if (qword_100CBD080 != -1)
        {
          sub_10091725C();
        }

        v9 = v3[17] * mach_continuous_time();
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v10;
      v52 = v10;
      *__n = v10;
      *&__n[16] = v10;
      os_channel_get_next_slot();
      v11 = _IDSLinkPacketBufferCreate();
      v12 = v11;
      if (*(v11 + 8) >= *&__n[2])
      {
        if (*&__n[2])
        {
          memcpy(*v11, *&__n[16], *&__n[2]);
          *(v12 + 16) = *&__n[2];
          v41 = 0xAAAAAAAAAAAAAAAALL;
          v40 = -1431655766;
          if (sub_10034B5D4(v2[8], v12, &v41, &v40))
          {
            v14 = [v2 packetBufferHandler];
            v15 = 0.0;
            if (v5)
            {
              if (qword_100CBD080 != -1)
              {
                sub_10091725C();
              }

              v15 = v3[17] * mach_continuous_time();
            }

            if (v14)
            {
              v39 = *(v12 + 16);
              v16 = v40;
              v14[2](v14, v12, v41, v40, 0);
              if (v5)
              {
                if (qword_100CBD080 != -1)
                {
                  sub_10091725C();
                }

                v17 = mach_continuous_time();
                v18 = *&qword_100CBD088;
                v19 = +[IDSFoundationLog ClientChannelManager];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = v18 * v17;
                  v21 = *&__n[2];
                  v22 = objc_retainBlock(v14);
                  *buf = 134219264;
                  *v43 = v21;
                  *&v43[8] = 2048;
                  *&v43[10] = v39;
                  *&v43[18] = 2048;
                  *&v43[20] = v16;
                  v44 = 2048;
                  v45 = v22;
                  v23 = v22;
                  v46 = 2048;
                  v47 = v15 - v9;
                  v48 = 2048;
                  v49 = v20 - v15;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_clientChannel_read_datagrams got slot %lu data %lu metadata %lu packetBufferHandler %p slotParseTime %0.6lf handlerCallTime %0.6lf", buf, 0x3Eu);
                }

                v2 = v38;
                goto LABEL_46;
              }
            }

            else
            {
              _IDSLinkPacketBufferRelease();
              v19 = +[IDSFoundationLog ClientChannelManager];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *v43 = "_clientChannel_read_datagrams";
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: packetBufferHandler is nil", buf, 0xCu);
              }

LABEL_46:
            }

            v3 = &unk_100CBD000;
            goto LABEL_42;
          }

          v13 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v24 = @"NO";
            if (v2[8])
            {
              v24 = @"YES";
            }

            v25 = *(v12 + 16);
            *buf = 67109634;
            *v43 = v8;
            *&v43[4] = 2112;
            *&v43[6] = v24;
            *&v43[14] = 2048;
            *&v43[16] = v25;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "cannot parse slot %d hasMetadata %@ length %ld", buf, 0x1Cu);
          }
        }

        else
        {
          v13 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v43 = v8;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "channel has no data in slot %d", buf, 8u);
          }
        }
      }

      else
      {
        v13 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v43 = v8;
          *&v43[4] = 1024;
          *&v43[6] = *&__n[2];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "channel has too much data in slot %d length %u", buf, 0xEu);
        }
      }

      _IDSLinkPacketBufferRelease();
LABEL_42:
      if (v7 == ++v8)
      {
        v26 = os_channel_advance_slot();
        if (v26)
        {
          v27 = v26;
          [v2 osChannelInfoLog];
          v28 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *__n = 67109120;
            *&__n[4] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", __n, 8u);
          }
        }

        v29 = os_channel_sync();
        if (v29)
        {
          v30 = v29;
          [v2 osChannelInfoLog];
          v31 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *__n = 67109120;
            *&__n[4] = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "os_channel_sync for RX failed %d", __n, 8u);
          }
        }

        if (v5)
        {
          if (qword_100CBD080 != -1)
          {
            sub_10091725C();
          }

          v32 = mach_continuous_time();
          v33 = v3[17];
          v34 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *__n = 134218240;
            *&__n[4] = v7;
            *&__n[12] = 2048;
            *&__n[14] = v33 * v32 - v4;
            v35 = "_clientChannel_read_datagrams processed %lu slots total time %0.6lf";
            v36 = v34;
            v37 = 22;
            goto LABEL_63;
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }
  }

  [v2 osChannelInfoLog];
  v34 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *__n = 0;
    v35 = "_clientChannel_read_datagrams gave no slots to read";
    v36 = v34;
    v37 = 2;
LABEL_63:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, __n, v37);
  }

LABEL_64:

LABEL_65:
}

void sub_10034C5F0(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 136));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  else
  {
    v4 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "clientChannel %@ has no write handler - suspend", &v6, 0xCu);
    }

    IDSTransportThreadSuspendSocket();
  }
}

void sub_10034D4E8(uint64_t a1)
{
  v2 = +[IDSDSessionController sharedInstance];
  [v2 cleanupSessionWithChannelDestination:*(a1 + 32) clientChannelUUID:*(a1 + 40)];
}

void sub_10034D540(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_channel_get_fd();
    IDSTransportThreadRemoveSocket();
    os_channel_destroy();
    *(*(a1 + 32) + 88) = 0;
    os_channel_attr_destroy();
    *(*(a1 + 32) + 96) = 0;
    *(*(a1 + 32) + 104) = 0;
    os_nexus_controller_free_provider_instance();
    *(*(a1 + 32) + 9) = 1;
    v7 = [*(a1 + 32) packetBufferHandler];
    v4 = [[NSString alloc] initWithFormat:@"client %@ closed connection", *(a1 + 48)];
    v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{v4, NSLocalizedDescriptionKey, 0}];
    v6 = [[NSError alloc] initWithDomain:@"ClientChannel" code:9001 userInfo:v5];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0, 0, v6);
    }
  }
}

void sub_10034DBB4(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBD088 = v1 / v2 / 1000000000.0;
}

uint64_t sub_10034DFB0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return IDSTransportThreadAddSocketWithPriority();
  }

  return result;
}

void sub_10034E068(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(a1 + 32) _processBytesAvailable];
  v2 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v2);
}

void sub_10034E0B4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(a1 + 32) _sendToConnectedSocket];
  v2 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v2);
}

void sub_10034E46C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 40));
    [*(a1 + 32) _endSession];
    v4 = (*(a1 + 32) + 40);

    os_unfair_lock_unlock(v4);
  }
}

void sub_10034E710(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v7 objectForKey:@"originalMessage"];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [v4 addObject:v6];
}

void sub_10034E904(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10034EF14(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v9;
    if ([v5 shouldEncrypt] && *(a1 + 40) == objc_msgSend(v5, "protectionClass"))
    {
      [*(a1 + 32) addIndex:a3];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    Value = v9;
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"originalMessage");
    }

    v7 = Value;
    if ([(__CFDictionary *)v7 command]== 24)
    {
      v8 = v7;
      if ([(__CFDictionary *)v8 shouldEncrypt]&& *(a1 + 40) == [(__CFDictionary *)v8 protectionClass])
      {
        [*(a1 + 32) addIndex:a3];
      }
    }
  }

LABEL_15:
}

void sub_10034F040(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionDidReachInFlightMessageLowWaterMark:*(a1 + 32)];
  }
}

void sub_10034F884(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 40) didReceiveData:*(a1 + 48) withIdentifier:{objc_msgSend(*(a1 + 32), "sequenceNumber")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 40) didReceiveDataMessage:*(a1 + 32)];
  }
}

void sub_100350260(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionDidReceiveBytes:*(a1 + 32)];
  }
}

void sub_100350A38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionDidReachInFlightMessageLowWaterMark:*(a1 + 32)];
  }
}

void sub_1003511EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionBecameEmpty:*(a1 + 32)];
  }
}

void sub_1003514A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 40));
    v4 = *(a1 + 32);
    if ((*(v4 + 140) & 1) == 0)
    {
      *(v4 + 140) = 1;
      IDSTransportThreadResumeSocketWithPriority();
      v4 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v4 + 40));
  }
}

void sub_10035170C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionDidClose:*(a1 + 32)];
  }
}

void sub_100351AAC(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBD098 = v1 / v2 / 1000000000.0;
}

BOOL sub_100351D6C(id a1, ACAccount *a2)
{
  v2 = [(ACAccount *)a2 accountPropertyForKey:@"primaryAccount"];
  v3 = [v2 BOOLValue];

  return v3;
}

BOOL sub_100351EAC(id a1, ACAccount *a2)
{
  v2 = [(ACAccount *)a2 accountPropertyForKey:@"primaryAccount"];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_100352058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = [*(a1 + 32) _systemAccountRepresentationOfACAccount:v5 DSIDKey:*(a1 + 40)];
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Done checking for system signed in account { identifier: %@, systemAccount: %@ }", buf, 0x16u);
    }

    v13 = *(a1 + 56);
    if (!v13)
    {
      goto LABEL_9;
    }

    v10 = *(v13 + 16);
LABEL_8:
    v10();
LABEL_9:

    goto LABEL_10;
  }

  if (*(a1 + 56))
  {
    v7 = [NSError alloc];
    v14 = NSUnderlyingErrorKey;
    v15 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v7 initWithDomain:@"IDSSystemAccountAdapterErrorDomain" code:-1000 userInfo:v8];

    v10 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

LABEL_10:
}

void sub_100352318(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100352458;
  block[3] = &unk_100BD8BD0;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 2);
  v8 = *(&v13 + 1);
  v9 = a1[7];
  *&v10 = a1[6];
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v19 = a1[8];
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_100352458(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v5 = [*(a1 + 48) _firstAccountInStore:*(a1 + 56) withType:? matchingCriteria:?];
  }

  else
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 40);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Did not find account type { identifier: %@, accountsError: %@ }", &v6, 0x16u);
    }

    v5 = 0;
  }

  (*(*(a1 + 80) + 16))();
}

void sub_100352B98(id a1)
{
  v1 = *IMWeakLinkSymbol();
  qword_100CBD0A8 = v1;
  if (v1)
  {

    CFRetain(v1);
  }
}

void sub_100352BE8(id a1)
{
  v1 = *IMWeakLinkSymbol();
  qword_100CBD0B8 = v1;
  if (v1)
  {

    CFRetain(v1);
  }
}

void sub_100352ED8(uint64_t a1)
{
  v2 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 64) length];
    *buf = 138413314;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to send opportunistic data {identifier: %@, service: %@, uniqueID: %@, options: %@, dataLength: %llu}", buf, 0x34u);
  }

  v8 = *(*(a1 + 72) + 16);
  v9 = [[IDSOpportunisticData alloc] initWithData:*(a1 + 64) identifier:*(a1 + 32) serviceName:*(a1 + 40) accountUniqueID:*(a1 + 48) options:*(a1 + 56)];
  v12 = 0;
  [v8 addData:v9 withError:&v12];
  v10 = v12;

  v11 = *(a1 + 80);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

void sub_100353118(void *a1)
{
  v2 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to cancel opportunistic data {identifier: %@, service: %@}", buf, 0x16u);
  }

  v5 = a1[5];
  v6 = *(a1[6] + 16);
  v7 = a1[4];
  v10 = 0;
  [v6 removeDataWithIdentifier:v7 serviceName:v5 withError:&v10];
  v8 = v10;
  v9 = a1[7];
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

uint64_t sub_10035340C(uint64_t a1)
{
  if ([*(a1 + 32) diceRoll])
  {
    v2 = [*(*(a1 + 32) + 16) selectDataForDestination:*(a1 + 40)];
    v3 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Passed dice roll {destination: %@, data: %@}", &v7, 0x16u);
    }

    if (v2 && [*(a1 + 32) sendOpportunisticData:v2 toDestination:*(a1 + 40)])
    {
      [v2 incrementSendCountForDestination:*(a1 + 40)];
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v5);
  }

  return result;
}

void sub_10035396C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v3 idsResponseCode];
    v8 = [v3 responseError];
    v9 = [v3 lastCall];
    v11 = 138413314;
    v10 = @"NO";
    v12 = v5;
    v13 = 2112;
    if (v9)
    {
      v10 = @"YES";
    }

    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Message for opportunistic data got response {identifier: %@, guid: %@, responseCode: %lu, error: %@, lastCall: %@}", &v11, 0x34u);
  }
}

void sub_100353AA0(uint64_t a1)
{
  [*(a1 + 32) sendMessageWithSendParameters:*(a1 + 40) willSendBlock:0 completionBlock:*(a1 + 80)];
  v2 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) uniqueID];
    v7 = *(a1 + 72);
    *buf = 138413314;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sent opportunistic message {identifier: %@, guid: %@, service: %@, accountUUID: %@, destination: %@}", buf, 0x34u);
  }

  v8 = +[IDSDaemon sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100353CA0;
  v11[3] = &unk_100BD8D00;
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 72);
  v9 = [*(a1 + 32) service];
  v10 = [v9 pushTopic];
  [v8 enqueueBroadcast:v11 forTopic:v10 entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:0];
}

void sub_100353CA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v8 = [v4 uniqueID];
  v6 = [*(a1 + 48) normalizedURIStrings];
  v7 = [v6 allObjects];
  [v5 didSendOpportunisticDataWithIdentifier:v3 onAccount:v8 toIDs:v7];
}

uint64_t sub_1003551CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1003551E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    v11 = 138413058;
    v12 = v5;
    v13 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Message %@ got response code %lu error %@ lastCall %@", &v11, 0x2Au);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void sub_100356B44(id a1)
{
  qword_100CBD0C0 = objc_alloc_init(IDSNanoRegistryPluginManager);

  _objc_release_x1();
}

id sub_100356C64(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);

  return [v5 _initializePlugin];
}

void sub_100356D4C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) count];
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (!v2 && [*(a1 + 32) pluginImplementsWatchDidStartAdvertising])
  {
    v3 = [*(a1 + 32) plugin];
    [v3 watchDidStartAdvertising];
  }
}

_BYTE *sub_100356E4C(uint64_t a1)
{
  result = [*(a1 + 32) pluginImplementsWatchDidStartAdvertising];
  if (result)
  {
    result = *(a1 + 32);
    if ((result[10] & 1) == 0)
    {
      v3 = [result plugin];
      [v3 watchDidStartAdvertising];

      *(*(a1 + 32) + 10) = 1;
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 10))
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        *buf = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bundle {isAdvertising:%@}", buf, 0xCu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

void sub_100357060(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) count];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (v2 == 1 && ![*(*(a1 + 32) + 24) count] && objc_msgSend(*(a1 + 32), "pluginImplementsWatchDidStopAdvertising"))
  {
    v3 = [*(a1 + 32) plugin];
    [v3 watchDidStopAdvertising];
  }
}

_BYTE *sub_100357174(uint64_t a1)
{
  result = [*(a1 + 32) pluginImplementsWatchDidStopAdvertising];
  if (result)
  {
    result = *(a1 + 32);
    if (result[10] == 1)
    {
      v3 = [result plugin];
      [v3 watchDidStopAdvertising];

      *(*(a1 + 32) + 10) = 0;
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 10))
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        *buf = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bundle {isAdvertising:%@}", buf, 0xCu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

void sub_100357FB8(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100358098;
  v9[3] = &unk_100BD8DE8;
  v7 = a1[5];
  v13 = a2;
  v10 = v7;
  v11 = v5;
  v12 = a1[6];
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_100358098(uint64_t a1)
{
  v2 = [IDSPayloadVerificationResult alloc];
  v3 = [*(a1 + 32) remoteURI];
  v4 = [v2 initWithURI:v3 verified:*(a1 + 56) error:*(a1 + 40)];

  [*(a1 + 48) fulfillWithValue:v4];
}

void sub_100358290(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) signedPayload];
  v4 = [*(a1 + 40) payloadData];
  v5 = *(a1 + 72);
  v6 = *(a1 + 48);
  v16 = 0;
  LOBYTE(v2) = [v2 verifySignedData:v3 matchesData:v4 forType:v5 withPublicDeviceIdentity:v6 error:&v16];
  v7 = v16;

  v8 = [*(a1 + 56) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003583C4;
  block[3] = &unk_100BD8DE8;
  v9 = *(a1 + 40);
  v15 = v2;
  v12 = v9;
  v13 = v7;
  v14 = *(a1 + 64);
  v10 = v7;
  dispatch_async(v8, block);
}

void sub_1003583C4(uint64_t a1)
{
  v2 = [IDSPayloadVerificationResult alloc];
  v3 = [*(a1 + 32) remoteURI];
  v4 = [v2 initWithURI:v3 verified:*(a1 + 56) error:*(a1 + 40)];

  [*(a1 + 48) fulfillWithValue:v4];
}

uint64_t sub_100358BB8(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 value];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [v8 uri];
        [v9 setObject:v8 forKey:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100358D04(uint64_t a1)
{
  v64 = objc_alloc_init(NSMutableDictionary);
  v65 = objc_alloc_init(NSMutableArray);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (v2)
  {
    v70 = *v95;
    v63 = IDSSigningErrorDomain;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v95 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v94 + 1) + 8 * i);
        v5 = [v4 remoteURI];
        v6 = [IDSBatchVerifier getItemToNoteForRemoteURI:v5];

        v7 = [*(a1 + 40) rateLimiter];
        v8 = [v7 underLimitForItem:v6];

        if (v8)
        {
          v9 = [*(a1 + 40) peerIDManager];
          v10 = [v4 remoteURI];
          v11 = [*(a1 + 40) localURI];
          v12 = [*(a1 + 40) service];
          [v9 forgetPeerTokensForURI:v10 fromURI:v11 service:v12 reason:1];
        }

        else
        {
          [v65 addObject:v4];
          v13 = *(a1 + 40);
          v14 = [v4 remoteURI];
          v9 = [v13 lastResortCacheIdentityForURI:v14];

          if (v9)
          {
            [v64 setObject:v9 forKey:v4];
          }

          else
          {
            v15 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v4 remoteURI];
              *buf = 138412290;
              v102 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "URI is rate-limited and no identity found in last resort cache: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v62 = [v4 remoteURI];
              _IDSLogEventV();
            }

            v17 = [NSError errorWithDomain:v63 code:8 userInfo:0, v62];
            v18 = [IDSPayloadVerificationResult alloc];
            v19 = [v4 remoteURI];
            v20 = [v18 initWithURI:v19 verified:0 error:v17];

            v21 = *(*(*(a1 + 72) + 8) + 40);
            v22 = [v4 remoteURI];
            [v21 setObject:v20 forKey:v22];
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
    }

    while (v2);
  }

  if ([v65 count])
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v65;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Rate-limited contexts that will not be queried for: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v62 = v65;
      _IDSLogEventV();
    }
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v71 = v65;
  v24 = [v71 countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (v24)
  {
    v25 = *v91;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(v71);
        }

        [*(a1 + 32) removeObject:{*(*(&v90 + 1) + 8 * j), v62}];
      }

      v24 = [v71 countByEnumeratingWithState:&v90 objects:v100 count:16];
    }

    while (v24);
  }

  obja = [*(a1 + 32) __imArrayByApplyingBlock:&stru_100BD8E78];
  if ([obja count])
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = obja;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Querying for remote URIs: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSLogEventV();
    }

    v28 = [[IDSPeerIDQueryContext alloc] initWithSending:0 forceToServer:0 messaging:0 resultExpected:1 preventNewQuery:0];
    v29 = [*(a1 + 40) peerIDManager];
    v30 = [*(a1 + 40) cert];
    v31 = [*(a1 + 40) localURI];
    [*(a1 + 40) service];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_100359A24;
    v66 = v72[3] = &unk_100BD8EA0;
    v73 = obja;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v74 = v32;
    v75 = v33;
    v76 = v64;
    v34 = *(a1 + 72);
    v35 = *(a1 + 48);
    v79 = *(a1 + 80);
    v36 = v31;
    v37 = *(a1 + 56);
    *&v38 = *(a1 + 64);
    *(&v38 + 1) = v34;
    *&v39 = v35;
    *(&v39 + 1) = v37;
    v77 = v39;
    v78 = v38;
    [v29 startQueryForURIs:v73 fromIdentity:v30 fromURI:v36 fromService:v66 context:v28 reason:@"EndpointForURI" completionBlock:v72];

    v40 = v73;
  }

  else
  {
    v28 = objc_alloc_init(NSMutableArray);
    v41 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 48);
      *buf = 138412290;
      v102 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found endpoints by context: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v62 = *(a1 + 48);
      _IDSLogEventV();
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v43 = *(a1 + 48);
    v44 = [v43 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v44)
    {
      v45 = *v87;
      do
      {
        for (k = 0; k != v44; k = k + 1)
        {
          if (*v87 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v86 + 1) + 8 * k);
          v48 = *(a1 + 40);
          v49 = [*(a1 + 48) objectForKey:{v47, v62}];
          v50 = [v48 _verifySignedDataWithContext:v47 endpoint:v49 forType:*(a1 + 80) onQueue:*(a1 + 56)];
          [(IDSPeerIDQueryContext *)v28 addObject:v50];
        }

        v44 = [v43 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v44);
    }

    v51 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v64;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found last resort cache identities by context: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v62 = v64;
      _IDSLogEventV();
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v52 = v64;
    v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
    if (v53)
    {
      v54 = *v83;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v83 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v82 + 1) + 8 * m);
          v57 = *(a1 + 40);
          v58 = *(a1 + 80);
          v59 = [v52 objectForKey:{v56, v62}];
          v60 = [v57 _verifySignedDataWithContext:v56 forType:v58 withPublicDeviceIdentity:v59 onQueue:*(a1 + 56)];
          [(IDSPeerIDQueryContext *)v28 addObject:v60];
        }

        v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
      }

      while (v53);
    }

    v40 = [CUTUnsafePromise all:v28];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_100359820;
    v80[3] = &unk_100BD8E38;
    v67 = *(a1 + 64);
    v61 = v67;
    v81 = v67;
    [v40 registerResultBlock:v80];
  }
}