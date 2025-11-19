@interface SIActivityDump
@end

@implementation SIActivityDump

size_t ___SIActivityDump_block_invoke(uint64_t a1, int *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  memset(v121, 0, 256);
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v4 = *a2;
  v5 = *a2 - 1;
  *v105 = 0u;
  v106 = 0u;
  result = "CreateIndex";
  switch(v5)
  {
    case 0:
    case 36:
      break;
    case 1:
    case 32:
    case 37:
      result = "OpenIndex";
      break;
    case 2:
    case 33:
    case 38:
      result = "OpenIndexShadow";
      break;
    case 3:
    case 6:
    case 7:
    case 34:
    case 35:
LABEL_15:
      v16 = *(a1 + 48);
      get_date_string(*(a1 + 56), v121, *(a2 + 3));
      result = fprintf(v16, "%s time: %s\n");
      goto LABEL_61;
    case 4:
    case 39:
      result = "SyncIndex";
      break;
    case 5:
LABEL_26:
      v104 = *(a2 + 4);
      v20 = localtime(&v104);
      strftime(v105, 0x100uLL, "%F %T", v20);
      v21 = *(a1 + 48);
      get_date_string(*(a1 + 56), v121, *(a2 + 3));
      fprintf(v21, "%s time: %s recoverTimeStamp:%s (%ld)\n");
      goto LABEL_43;
    case 8:
    case 9:
    case 15:
    case 31:
    case 40:
    case 41:
    case 42:
    case 43:
      goto LABEL_61;
    case 10:
    case 27:
    case 28:
      result = "AddItem";
      break;
    case 11:
    case 13:
    case 14:
    case 59:
    case 60:
LABEL_13:
      v14 = *(a1 + 48);
      v15 = *(a2 + 3);
      if (a2[3])
      {
        v68 = *(a2 + 3);
        result = fprintf(v14, "%s oid: 0x%llx %lld transaction: %d\n");
      }

      else
      {
        v64 = *(a2 + 3);
        result = fprintf(v14, "%s oid: 0x%llx %lld\n");
      }

LABEL_55:
      ++*(*(*(a1 + 32) + 8) + 40);
      goto LABEL_61;
    case 12:
    case 29:
    case 30:
      result = "UpdateItem";
      break;
    case 16:
    case 17:
    case 18:
    case 53:
LABEL_16:
      v17 = *(a2 + 3);
      if ((HIDWORD(v17) == 716189596 || HIDWORD(v17) == 510259174) && (v17 & 0x80000000) == 0 && v17)
      {
        v69 = *(a2 + 3);
        result = fprintf(*(a1 + 48), "%s id: %d oid: 0x%llx %lld\n");
      }

      else
      {
        v63 = *(a2 + 3);
        result = fprintf(*(a1 + 48), "%s oid: 0x%llx %lld\n");
      }

      ++*(*(*(a1 + 32) + 8) + 48);
      goto LABEL_61;
    case 19:
LABEL_37:
      v40 = *(a2 + 4);
      v60 = a2[6];
      result = fprintf(*(a1 + 48), "NewLiveIndex position: %d base: %lld\n");
      goto LABEL_61;
    case 20:
    case 21:
LABEL_25:
      v19 = a2[6];
      v70 = a2[7];
      result = fprintf(*(a1 + 48), "%s position: %d count: %d\n");
      goto LABEL_61;
    case 22:
LABEL_45:
      v48 = *(a2 + 4);
      v65 = a2[7];
      v61 = a2[10];
      result = fprintf(*(a1 + 48), "NewBundleGroup %d 0x%x %s\n");
      goto LABEL_61;
    case 23:
    case 24:
    case 51:
    case 52:
LABEL_21:
      v18 = a2[6];
      result = fprintf(*(a1 + 48), "%s journal.%d\n");
      goto LABEL_61;
    case 25:
LABEL_38:
      v36 = *(a1 + 48);
      v41 = *MEMORY[0x1E69E9840];
      v38 = "Playback start\n";
      v39 = 15;
      goto LABEL_39;
    case 26:
LABEL_36:
      v36 = *(a1 + 48);
      v37 = *MEMORY[0x1E69E9840];
      v38 = "Playback end\n";
      v39 = 13;
LABEL_39:

      return fwrite(v38, v39, 1uLL, v36);
    case 44:
    case 46:
    case 49:
      result = "AddMailItem";
      break;
    case 45:
    case 47:
    case 48:
    case 50:
      result = "UpdateMailItem";
      break;
    case 54:
LABEL_42:
      v42 = *(a1 + 48);
      get_date_string(*(a1 + 56), v121, *(a2 + 3));
      v43 = *(a2 + 4);
      v71 = *(a2 + 5);
      fprintf(v42, "Journal was reset at time %s, size before reset: %llu, size after reset: %llu\n");
LABEL_43:
      v44 = *(a2 + 3);
      goto LABEL_48;
    case 55:
LABEL_44:
      v45 = *(a1 + 48);
      v46 = a2[6];
      get_date_string(*(a1 + 56), v121, *(a2 + 4));
      v47 = *(a2 + 5);
      fprintf(v45, "%s pid: %d time: %s build: %s\n");
      goto LABEL_47;
    case 57:
LABEL_34:
      v31 = *(a1 + 48);
      v32 = *(a2 + 24);
      v33 = *(a2 + 4);
      v34 = *(a2 + 5);
      v35 = a2[12];
      if (a2[13])
      {
        v84 = a2[12];
        v92 = *(a2 + 7);
        result = fprintf(v31, "%s[%u] id: %llu hash: %llx sz: %lu %s\n");
      }

      else
      {
        v80 = *(a2 + 5);
        result = fprintf(v31, "%s[%u] id: %llu hash: %llx sz: %lu\n");
      }

      goto LABEL_61;
    case 58:
LABEL_32:
      v29 = a2[7];
      if (v29 <= 0x10)
      {
        v30 = off_1E81975B0[v29];
      }

      v56 = a2[8];
      v90 = a2[9];
      v66 = a2[6];
      result = fprintf(*(a1 + 48), "%s[%u] %s/%s cnt:%u\n");
      goto LABEL_61;
    default:
      result = "Unknown";
      break;
  }

  v7 = result;
  switch(v5)
  {
    case 0:
    case 1:
    case 2:
    case 32:
    case 33:
    case 36:
    case 37:
    case 38:
      if ((v4 - 37) <= 2)
      {
        v104 = *(a2 + 9);
        v8 = v104;
        v9 = localtime(&v104);
        strftime(v105, 0x100uLL, "%F %T", v9);
        v10 = *(a1 + 48);
        v11 = a2[6];
        date_string = get_date_string(*(a1 + 56), v121, *(a2 + 4));
        v102 = v105;
        v103 = v8;
        v96 = *(a2 + 7);
        v100 = *(a2 + 8);
        v83 = a2[11];
        v91 = a2[12];
        v67 = date_string;
        v76 = a2[10];
        v13 = "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d serialNumber: %lld consumedSerialNumber: %lld recoverTimeStamp:%s (%ld)\n";
        v62 = v11;
LABEL_29:
        fprintf(v10, v13, v7, v62, v67, v76, v83, v91, v96, v100, v102, v103);
        goto LABEL_47;
      }

      v22 = v4 - 33;
      v23 = a2[6];
      v10 = *(a1 + 48);
      v24 = get_date_string(*(a1 + 56), v121, *(a2 + 4));
      if (v22 <= 1)
      {
        v96 = *(a2 + 7);
        v100 = *(a2 + 8);
        v83 = a2[11];
        v91 = a2[12];
        v67 = v24;
        v76 = a2[10];
        v13 = "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d serialNumber: %lld consumedSerialNumber: %lld\n";
        v62 = v23;
        goto LABEL_29;
      }

      v85 = a2[11];
      fprintf(v10, "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d\n");
LABEL_47:
      v44 = *(a2 + 4);
LABEL_48:
      *(*(*(a1 + 32) + 8) + 32) = v44;
      result = write_timeline(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = write_timeline_result;
LABEL_61:
      v59 = *MEMORY[0x1E69E9840];
      return result;
    case 3:
    case 4:
    case 6:
    case 7:
    case 34:
    case 35:
      goto LABEL_15;
    case 5:
    case 39:
      goto LABEL_26;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 59:
    case 60:
      goto LABEL_13;
    case 16:
    case 17:
    case 18:
    case 53:
      goto LABEL_16;
    case 19:
      goto LABEL_37;
    case 20:
    case 21:
      goto LABEL_25;
    case 22:
      goto LABEL_45;
    case 23:
    case 24:
    case 51:
    case 52:
      goto LABEL_21;
    case 25:
      goto LABEL_38;
    case 26:
      goto LABEL_36;
    case 27:
    case 28:
    case 29:
    case 30:
      v25 = *(a1 + 48);
      v27 = *(a2 + 3);
      v26 = *(a2 + 4);
      v28 = *(a2 + 2);
      if (a2[3])
      {
        v77 = *(a2 + 3);
        result = fprintf(v25, "%s transaction: %d id: %s oid: 0x%llx serial: %lld\n");
      }

      else
      {
        v74 = *(a2 + 3);
        result = fprintf(v25, "%s id: %s oid: 0x%llx serial: %lld\n");
      }

      goto LABEL_55;
    case 44:
    case 45:
      v49 = *(a1 + 48);
      v51 = *(a2 + 3);
      v50 = *(a2 + 4);
      v52 = *(a2 + 2);
      v53 = *(a2 + 44);
      if (a2[3])
      {
        v86 = *(a2 + 2);
        result = fprintf(v49, "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d\n");
      }

      else
      {
        v82 = *(a2 + 2);
        result = fprintf(v49, "%s id: %s oid: 0x%llx serial: %lld read: %d\n");
      }

      goto LABEL_58;
    case 46:
    case 47:
      v54 = a2[3];
      v93 = *(a2 + 44);
      v97 = *(a2 + 45);
      v78 = *(a2 + 3);
      v87 = *(a2 + 2);
      v72 = *(a2 + 4);
      result = fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d\n", result);
      goto LABEL_58;
    case 48:
      v57 = a2[3];
      v95 = *(a2 + 44);
      v99 = *(a2 + 45);
      v81 = *(a2 + 3);
      v89 = *(a2 + 2);
      v75 = *(a2 + 4);
      result = fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d color: <null>\n", result);
      goto LABEL_58;
    case 49:
    case 50:
      v55 = a2[3];
      v98 = *(a2 + 45);
      v101 = *(a2 + 46);
      v88 = *(a2 + 2);
      v94 = *(a2 + 44);
      v73 = *(a2 + 4);
      v79 = *(a2 + 3);
      result = fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d color: %d\n", result);
LABEL_58:
      ++*(*(*(a1 + 32) + 8) + 44);
      goto LABEL_61;
    case 54:
      goto LABEL_42;
    case 55:
      goto LABEL_44;
    case 56:
      v58 = *(a2 + 3);
      result = fprintf(*(a1 + 48), "%s\n");
      goto LABEL_61;
    case 57:
      goto LABEL_34;
    case 58:
      goto LABEL_32;
    default:
      goto LABEL_61;
  }
}

@end